/**
 * 
 */
 $(document).ready(function () {
         var currentImg = 1;
         var totalImgs = 3;

         function showImage(index) {
            $(".imglist img").hide(); // Hide all images
            $("#imglist" + index).show(); // Show the selected image
         }

         // Function to change to the next image
         function nextImage() {
            currentImg++;
            if (currentImg > totalImgs) {
               currentImg = 1;
            }
            showImage(currentImg);
         }

         // Set an interval to automatically switch images every 3 seconds
         var interval = setInterval(nextImage, 2000);

         // Stop the slideshow when the mouse is over the image
         $(".imglist img").hover(
            function () {
               clearInterval(interval);
            },
            function () {
               interval = setInterval(nextImage, 2000);
            }
         );

         // Initially show the first image
         showImage(currentImg);
      });
      
      
      $(document).ready(function() {
   $(".category>a").click(function() {
      $(this).next("ul").toggleClass("categorybtn");
   });
});