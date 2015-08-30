@GroupList = React.createClass
  render: () ->
    selectedGroups = if sessionStorage.getItem('groups') then sessionStorage.getItem('groups').split(',') else []
    groupNodes = @props.data.map (group) ->
      checked = _.contains(selectedGroups, group.gid.toString())
      return (
        <Group id={group.gid} type={group.type} name={group.name} checked={checked} />
      )
    return (
      <div className="groupList large-12 columns">
        {groupNodes}
      </div>
    )
