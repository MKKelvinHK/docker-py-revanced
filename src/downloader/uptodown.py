"""Upto Down Downloader."""
from typing import Any

from bs4 import BeautifulSoup
from loguru import logger
from selectolax.lexbor import LexborHTMLParser

from src.downloader.download import Downloader
from src.exceptions import AppNotFound


class UptoDown(Downloader):
    """Files downloader."""

    def extract_download_link(self, page: str, app: str) -> None:
        parser = LexborHTMLParser(self.config.session.get(page).text)
        main_page = parser.css_first("#detail-download-button")
        download_url = main_page.attributes["data-url"]
        self._download(download_url, f"{app}.apk")
        logger.debug(f"Downloaded {app} apk from upto_down_downloader in rt")

    def specific_version(self, app: str, version: str) -> None:
        """Function to download the specified version of app from  apkmirror.

        :param app: Name of the application
        :param version: Version of the application to download
        :return: Version of downloaded apk
        """
        logger.debug("downloading specified version of app from uptodown.")
<<<<<<< HEAD
        url = f"https://{app}.jp.uptodown.com/android/versions"
=======
        url = (
            f"https://{self.config.upto_down.get(app)}.en.uptodown.com/android/versions"
        )
>>>>>>> a3732427731efd59612c3fa1264d8fc11815823e
        html = self.config.session.get(url).text
        soup = BeautifulSoup(html, "html.parser")
        versions_list = soup.find("section", {"id": "versions"})
        download_url = None
        for version_item in versions_list.find_all("div", {"data-url": True}):
            extracted_version = version_item.find("span", {"class": "version"}).text
            if extracted_version == version:
                download_url = version_item["data-url"]
                break
        if download_url is None:
            raise AppNotFound(f"Unable to get download url for {app}")
        self.extract_download_link(download_url, app)
        logger.debug(f"Downloaded {app} apk from upto_down_downloader in rt")

    def latest_version(self, app: str, **kwargs: Any) -> None:
<<<<<<< HEAD
        page = f"https://{app}.jp.uptodown.com/android/download"
=======
        page = (
            f"https://{self.config.upto_down.get(app)}.en.uptodown.com/android/download"
        )
>>>>>>> a3732427731efd59612c3fa1264d8fc11815823e
        self.extract_download_link(page, app)
