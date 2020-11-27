<?php

namespace App\Controller;

use App\Database\Fichier;
use App\Database\FichierManager;
use App\File\UploadService;
use Doctrine\DBAL\Connection;
use Psr\Http\Message\ResponseInterface;
use Psr\Http\Message\ServerRequestInterface;
use Psr\Http\Message\UploadedFileInterface;

class HomeController extends AbstractController
{
    public function homepage(
        ResponseInterface $response,
        ServerRequestInterface $request,
        UploadService $uploadService,
        FichierManager $fichierManager
    ) {
        /**
         * Récupération du fichier envoyé par le formulaire
         * dans la méthode homepage() du HomeController
         *
         * En partant du principe qu'un argument $request typé par: Psr\Http\Message\ServerRequestInterface
         * Et que le formulaire comporte un champ nommé "fichier"
         */

        // Récupérer les fichiers envoyés:
        $listeFichiers = $request->getUploadedFiles();

        // Si le formulaire est envoyé
        if (isset($listeFichiers['fichier'])) {
            /** @var UploadedFileInterface $fichier */
            $fichier = $listeFichiers['fichier'];

            /**
             * Méthodes à utiliser de $fichier:
             *      getClientFilename()     nom original du fichier
             *      getError()              code d'erreur
             *      moveTo()                déplacer le fichier
             */

            $nouveauNom = $uploadService->saveFile($fichier);

            // Enregistrer les infos du fichieren base de données

            $fichier = $fichierManager->createFichier($nouveauNom, $fichier->getClientFilename(), mime_content_type($uploadService::FILES_DIR . '/' . $nouveauNom), 0);
            // méthode insert()
            /* $connection->insert('fichier', [
                'nom' => $nouveauNom,
                'nom_original' => $fichier->getClientFilename(),
            ]);*/

            // méthode executeStatement()
            //$connection->executeStatement('INSERT INTO fichier (nom, nom_original) VALUES (:nom, :nom_original)', [
            //'nom' => $nouveauNom,
            //'nom_original' => $fichier->getClientFilename(),
            //]);

            // méthode prepare() (style PDO)
            /* $query = $connection->prepare('INSERT INTO fichier (nom, nom_original) VALUES (:nom, :nom_original)');
            $query->bindValue('nom', $nouveauNom);
            $query->bindValue('nom_original', $fichier->getClientFilename());
            $query->execute();*/

            // Query Builder
            /* $queryBuilder = $connection->createQueryBuilder();
            $queryBuilder
                ->insert('fichier')
                ->values([
                    'nom' => $nouveauNom,
                    'nom_original' => $fichier->getClientFilename(),
                ]);
            $queryBuilder->execute();*/

            // Redirection vers la page de succès

            return $this->redirect('success', [
                'id' => $fichier->getId()
            ]);

            // Afficher un message à l'utilisateur 

        }


        return $this->template($response, 'home.html.twig');
    }

    public function success(ResponseInterface $response, int $id, FichierManager $fichierManager)
    {
        $fichier = $fichierManager->getById($id);
        if ($fichier === null) {
            return $this->redirect('file-error');
        }
        return $this->template($response, 'success.html.twig', [
            'fichier' => $fichier
        ]);
    }

    public function fileError(ResponseInterface $response)
    {
        return $this->template($response, 'file_error.html.twig');
    }

    //public const FILES_DIR = __DIR__ . '/../../files';

    public function download(ResponseInterface $response, int $id, Connection $connection, FichierManager $fichierManager, UploadService $uploadService)
    {
        //$response->getBody()->write(sprintf('Identifiant: %d', $id));

        /*$var = $connection->fetchOne(sprintf('SELECT nom FROM fichier WHERE id = %d', $id));
        if ($var === false) {
            return $this->redirect('file-error');
        } elseif (!file_exists(self::FILES_DIR . '/' . $var)) {
            return $this->redirect('file-error');
        } else {
            $lien = "http://$_SERVER[HTTP_HOST]" . '/share-it/files/' . $var;
            $response->getBody()->write(sprintf('<a href="%s">Telecharger</a>', $lien));
        }

        return $response;*/


        $fichier = $fichierManager->getById($id);
        $compteur = $fichierManager->updateCompteur($id, $fichier->getCompteur());
        $fichier = $fichierManager->getById($id);
        if ($fichier === null) {
            return $this->redirect('file-error');
        }


        $nomFichier = $fichier->getNom();
        if (!file_exists($uploadService::FILES_DIR . '/' . $nomFichier)) {
            return $this->redirect('file-error');
        }
        $nomOriginalFichier = $fichier->getNomOriginal();
        header('Content-Disposition: attachment; filename="' . basename($nomOriginalFichier) . '"');
        header('Content-Type: ' . $fichier->getMime() . ';');

        readfile($uploadService::FILES_DIR . '/' . $nomFichier);
        exit;
    }
}
