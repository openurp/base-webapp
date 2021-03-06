[#ftl]
[@b.head/]
[@b.grid items=rooms var="room"]
  [@b.gridbar]
    bar.addItem("${b.text("action.new")}",action.add());
    bar.addItem("${b.text("action.modify")}",action.edit());
    bar.addItem("${b.text("action.delete")}",action.remove("确认删除?"));
    bar.addItem("${b.text('action.export')}",action.exportData("code:代码,name:名称,campus.name:校区,building.name:建筑物,roomType.name:房间类型,floor:楼层",null,'fileName=房间信息'));
  [/@]
  [@b.row]
    [@b.boxcol /]
    [@b.col width="10%" property="code" title="代码"]${room.code}[/@]
    [@b.col width="15%" property="name" title="名称"][@b.a href="!info?id=${room.id}"]${room.name}[/@][/@]
    [@b.col width="10%" property="campus" title="所属校区"]${(room.campus.name)!}[/@]
    [@b.col width="15%" property="department" title="管理部门"]${(room.department.name)!}[/@]
    [@b.col width="15%" property="roomType" title="房间类型"]${(room.roomType.name)!}[/@]
    [@b.col width="15%" property="building" title="所属建筑"]${(room.building.name)!}[/@]
    [@b.col width="5%" property="floorNo" title="楼层"]${room.floorNo!}[/@]
    [@b.col width="20%" property="beginOn" title="生效时间"]${room.beginOn!}~${room.endOn!}[/@]
  [/@]
[/@]
[@b.foot/]
