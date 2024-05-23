# Web-crawler-SHELL
The script takes an argument a list of URLs to web pages. The script downloads all images into the current directory, unless a file with identical name as the image already exists.
<h1 align="center">Shell Project 🐚</h1>
<h2 align="center">Project Fulfillments 🎯</h2>
<ul>
    <li>📸 Extraction of images and HTML pages (in the non-availability of images)</li>
    <li>🔗 Takes a URL as an argument.</li>
    <li>🌐 Extracts the file name from the URL using basename. If it does not exist, uses wget to download the file quietly (-q) "Verbose mode enabled intentionally for detailed output".</li>
    <li>📝 Outputs whether the image was downloaded or if the download failed. The Spider Function not only checks the webpage but also lets us know which action to take in the non-availability of images - set to download the webpage.</li>
    <li>🔄 process_page function: Iterates over each image URL and calls download_image in the background (&).</li>
</ul>
<h2 align="center">Objectives/ Advantages / Scope of the project 🌟</h2>
<ul>
    <li>HTTRACK lets you download webpages in your local directory with indexing each webpage separately, which is time-consuming when you want to download a single webpage with working functions.</li>
    <li>This shell script advantageously downloads the webpage with minimal time consumption in a single index.html file! 🚀</li>
</ul>
<h2 align="center">Project Execution 🛠️</h2>
<ul>
    <li>Run the script with a list of URLs as arguments: <code>./SCRAPE-IMG\&\HTML.sh "http://xyz.com/page1" "http://xyz.com/page2"</code></li>
    <li>📫 Reach out to me directly at <a href="mailto:sofiyansaboor@gmail.com">My Email</a>.</li>
</ul>
