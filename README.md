# Web-crawler-SHELL
The script takes an argument a list of URLs to web pages. The script downloads all images into the current directory, unless a file with identical name as the image already exists.
<h1 align="center">Shell Project</h1>
<h2 align="center">Project Fullfilments</h2>
<ul><li>Extraction of images and Html pages (in the non availability of images)</li>
    <li>🔭Takes a URL as an argument.</li>
    <li>🌱 Extracts the file name from the URL using basename, If it does not exist, uses wget to download the file quietly (-q) "Which I intensionally removed so that I can get verbose look during my execution".
    <li>Outputs whether the image was downloaded or if the download failed, The Spider Function not only checks the webpage it will also let us know which action to take in the non availability of images - I have set it to download the webpage</li>
    <li>process_page function: Iterates over each image URL and calls download_image in the background (&).</li>
</ul>
<h2 align="center">Objectives/ Advantages / Scope of the project (Better alternative to HTTRACK?)</h2>
<ul>
    <li>HTTRACK lets you download webpages in your local directory with indexing each webpage seperately this is time consuming when you want to download a single webpage with working functions</li>
    <li>This is the advantage of using this shell script which will download the webpage with minimal time consumtion in a single index.html file~!</li>
    
</ul>
<h2 align="center">Project Execution</h2>
    <ul>
    <li>Run the script with a list of URLs as arguments: ./SCRAPE-IMG \&\ HTML.sh "http://xyz.com/page1" "http://xyz.com/page2"</li>
    <li>📫 Reach out to me directly at <a href="sofiyansaboor@gmail.com">My Email</a>.</li>
    </ul>
