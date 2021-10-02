# you-get-ByList
让[you-get](https://github.com/soimort/you-get)根据你的列表来进行下载

## Usage
- 创建一个列表文件list, 内容为要下载的目标网址， 例如：
    ```
    https://www.bilibili.com/video/BV17x411N7M3
    https://www.bilibili.com/video/BV12s41117hd
    ```

- ### 不通过Docker
    - 将仓库的you-get-ByList.sh下载到本地
    - 给脚本赋予执行权限
        ```sh
        chmod +x ./you-get-ByList.sh
        ```
    - 执行脚本， 参数为列表文件的路径
        ```sh
        ./you-get-ByList.sh ./list
        ```
    - 下载内容会下载到当前执行脚本的目录

- ### 通过Docker
    - 将列表文件放到docker映射的目录下
    - 
        ```sh
        docker run --rm -v ~/Downloads/:/download doraemon0711/you-get-bylist list
        ```
