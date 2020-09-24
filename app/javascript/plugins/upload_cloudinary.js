  const UploadCloudinary = () => {
      const upload = document.getElementById('upload_widget');
      if (upload) {
        console.log('bobba la pute')
          const myWidget = cloudinary.createUploadWidget({
              cloudName: 'noirfuture138',
              uploadPreset: 'p3kpbot7'
          }, (error, result) => {
              if (!error && result && result.event === "success") {
                  console.log('Done! Here is the image info: ', result.info);
              }
          })

          document.getElementById("upload_widget").addEventListener("click", function() {
              myWidget.open();
          }, false);
      }

  }
export { UploadCloudinary }
