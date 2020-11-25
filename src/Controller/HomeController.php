<?php

namespace App\Controller;

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
        Connection $connection
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

            // méthode insert()
            $connection->insert('fichier', [
                'nom' => $nouveauNom,
                'nom_original' => $fichier->getClientFilename(),
            ]);

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




            // Afficher un message à l'utilisateur 



        }
        return $this->template($response, 'home.html.twig');
    }

    public function download(ResponseInterface $response, int $id)
    {
        $response->getBody()->write(sprintf('Identifiant: %d', $id));
        return $response;
    }
}
