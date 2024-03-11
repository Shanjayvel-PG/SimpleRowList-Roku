function init()
    print "in SimpleRowListPanel init()"
    m.top.itemComponentName = "SimpleRowListItem"
    m.top.numRows = 2
    m.top.itemSize = [196 * 5 + 20 * 4, 213]
    m.top.rowHeights = [213]
    m.top.rowItemSize = [ [196, 213], [196, 213], [196, 213], [196, 213], [196, 213] ]
    m.top.itemSpacing = [ 0, 80 ]
    m.top.rowItemSpacing = [ [20, 0] ]
    m.top.rowLabelOffset = [ [0, 30] ]
    m.top.rowFocusAnimationStyle = "floatingFocus"
    m.top.showRowLabel = [true, true]
    m.top.rowLabelColor="0xa0b033ff"
    m.top.content = GetRowListContent()
    m.top.visible = true
    m.top.SetFocus(true)
    m.top.ObserveField("rowItemFocused", "onRowItemFocused")
end function

function GetRowListContent() as object
    'Populate the RowList content here
    data = CreateObject("roSGNode", "ContentNode")
    for numRows = 0 to 0
        row = data.CreateChild("ContentNode")
        row.title = "Display Images"
        ' row.title = "Title " + stri(numRows)
        image = ["https://th.bing.com/th/id/OIP.vE6AVzLshgSKPmUesZPm7AHaE8?rs=1&pid=ImgDetMain","https://th.bing.com/th/id/OIP.-ZirgQE5pr8e7htQWowJIgHaHa?rs=1&pid=ImgDetMain","https://www.telugu360.com/wp-content/uploads/2018/06/WhatsApps-one-way-broadcast-mode-for-group-chats-is-here.jpg","https://1.bp.blogspot.com/-qdRfUNOtjkM/XeI_00z9pzI/AAAAAAAAF4E/FeD2SvVFnKUjPAKQ_cNM6-D2ahjKb0HkQCLcBGAsYHQ/s1600/Youtube-Icon-square-2340x2340-2.png","https://brandlogos.net/wp-content/uploads/2023/07/x__twitter-logo_brandlogos.net_fxbde-300x300.png"]
        for i = 0 to 4
            item = row.CreateChild("SimpleRowListItemData")
            item.posterUrl = image[i]
            item.labelText = "Image Number" + stri(numRows*5+1 + i)
        
        end for
    end for
        return data
end function

function onRowItemFocused() as void
    row = m.top.rowItemFocused[0]
    ' col = m.top.rowItemFocused[1]
    print "Row Focused: " + stri(row)
    ' print "Col Focused: " + stri(col)
end function