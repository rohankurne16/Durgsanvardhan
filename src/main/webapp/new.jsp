<%@ page import="java.io.File" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<section class="gallery-section container my-5">

<%
    // Folder path of images
    String folderPath = application.getRealPath("images/gallery/");
    File folder = new File(folderPath);
    File[] files = folder.listFiles();

    if (files != null && files.length > 0) {
        int totalCards = 3;
        int imagesPerCard = 5;
        int fileIndex = 0;

        for (int card = 1; card <= totalCards; card++) {
%>
    <div id="carouselCard<%=card%>" class="carousel slide mb-4" data-bs-ride="carousel">
        <div class="carousel-inner">
<%
            for (int i = 0; i < imagesPerCard && fileIndex < files.length; i++, fileIndex++) {
                File f = files[fileIndex];
                if(f.isFile() && (f.getName().endsWith(".jpg") || f.getName().endsWith(".png"))) {
                    String imgPath = "images/gallery/" + f.getName();
%>
            <div class="carousel-item <%= (i==0) ? "active" : "" %>">
                <img src="<%=imgPath%>" class="d-block w-100" style="height:250px; object-fit:cover;" alt="Gallery Image">
            </div>
<%
                } else {
                    i--; // Skip non-image files
                }
            }
%>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselCard<%=card%>" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselCard<%=card%>" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>
<%
        }
    } else {
%>
    <p>Gallery मध्ये काहीही image नाहीत.</p>
<%
    }
%>

</section>
