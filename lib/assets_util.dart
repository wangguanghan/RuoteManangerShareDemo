///created by WGH
///on 2020/7/1
///description:获取资源文件工具类
class AssetsUtil{
  static String getImagePath({String imageName,String suffix}){
    return 'images/$imageName.$suffix';
  }
}

