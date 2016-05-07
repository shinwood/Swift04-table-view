
## 实现功能&要点
- UITableViewController (numberOfSectionsInTableView, numberOfRowsInSection, CellForRowAtIndexPath
- Embed in Navigational Controller
- Facade Design Pattern & Singleton Pattern
- 定义了 Album 类，表示专辑
- 定义了 AlbumManager 类，用于操作专辑
- 使用 Bar Button Item 添加
- 使用 unwind segue （Ctrl拖动到Exit）

## 原理
写这个 App 花了一下午的时间，有必要写一下思路。
1. 建立 2 个 ViewController，分别是 `AlbumView` 和 `NewAlbum`，对应列表展示和新建专辑
2. 建立 2 个 Model，`Album` 和 `AlbumManager`，`Album` 用于定义专辑的数据模型，`AlbumManager` 用来处理新建专辑，MVC 中的 M 层
3. 将两个 ViewController 均 embed 到 Navigation Controller 中
4. 点击 `Bar Button Item` 中的添加按钮时，触发新专辑的 Navigation Controller 的 show，显示出来
5. 在 `NewAblum` 中定义 `prepareForSegue`，判断为 `Save` 时，进行添加专辑操作
6. 在 `AlbumView` 中定义 `unwindToAlbumList`，接收 segue 回来的事件

\\\Swift
@IBAction func unwindToAlbumList(sender: UIStoryboardSegue)
\\\

7. 将 `Save` Ctrl + 拖动到 `Exit` 按钮，使得 Segue 生效

## 可改进的地方
- 未对新专辑的各项内容是否输入进行检查，Save 按钮应在各项都输入完备的情况下才可点击

## 更多阅读
- [官方iOS教程：第8课 实现导航](https://developer.apple.com/library/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/Lesson8.html)
- [斯坦福公开课 unwind Segue](http://open.163.com/movie/2015/2/6/S/MAIKHN60A_MAIPMEM6S.html)
- [The Swifting Programming Language 中文版](https://numbbbbb.gitbooks.io/-the-swift-programming-language-/content/chapter2/04_Collection_Types.html)