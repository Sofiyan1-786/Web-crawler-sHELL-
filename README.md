# Web-crawler-sHELL-
The script takes an argument a list of URLs to web pages. The script downloads all images into the current directory, unless a file with identical name as the image already exists.
<h1 align="center">Shell Project</h1>
<ul>
    <li>🔭 download_image function: Takes a URL as an argument.</li>
    <li>🌱 Extracts the file name from the URL using basename, If it does not exist, uses wget to download the file quietly (-q) and save it with the extracted file name (-O).
Outputs whether the image was downloaded or if the download failed.</li>
    <li>process_page function: Fetches the content of the web page using curl.
Extracts image URLs using grep with a Perl-compatible regular expression (-oP).
Iterates over each image URL and calls download_image in the background (&).</li>
    <li>📫 Reach out to me directly at <a href="sofiyansaboor@gmail.com">My Email</a>.</li>
</ul>
