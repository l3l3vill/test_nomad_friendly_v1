class Assets {
  static const String assetsImagesPath = 'lib/assets/';
  static const String assetsIconsPath = 'lib/assets/svg_icons/';

  ///ICON
  ///NavBar
  static String exploreIcon = fetchSvg('explore');
  static String suggestedIcon = fetchSvg('suggested');
  static String visitedIcon = fetchSvg('visited');
  static String userIcon = fetchSvg('user_icon');

  // IMAGES
  static String imgLoaderBackground = fetchPng('');


  static String fetchSvg(String imageName) {
    return _fetchIconPath(imageName, 'svg');
  }

  static String fetchJpg(String imageName) {
    return _fetchImagePath(imageName, 'jpg');
  }

  static String fetchPng(String imageName) {
    return _fetchImagePath(imageName, 'png');
  }

  static String _fetchIconPath(String imageName, String extension) {
    return '$assetsIconsPath$imageName.$extension';
  }

    static String _fetchImagePath(String imageName, String extension) {
    return '$assetsImagesPath$imageName.$extension';
  }
}