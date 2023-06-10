using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using Firebase.Storage;

namespace Blasterify.Firebase.Storage {
    public class Multimedia {
        public async Task<string> UploadImageToFirebase(Stream fileStream, string fileName) {
            // Configura tu cuenta de Firebase y obtén tu FirebaseStorage instance
            var firebaseStorage = new FirebaseStorage("your-bucket.appspot.com");

            // Sube el archivo y obtén la URL de descarga
            var downloadUrl = await firebaseStorage
                .Child("folder")
                .Child(fileName)
                .PutAsync(fileStream);

            return downloadUrl;
        }
    }
}