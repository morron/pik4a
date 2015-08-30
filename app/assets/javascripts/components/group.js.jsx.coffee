@Group = React.createClass
  getInitialState: () ->
    checked: @props.checked

  propTypes:
    id: React.PropTypes.string,
    name: React.PropTypes.string,
    type: React.PropTypes.oneOf(['group', 'page'])
    state: React.PropTypes.boolean

  handleChange: () ->
    checked = !@state.checked
    @setState checked: checked
    groups = if sessionStorage.getItem('groups') then sessionStorage.getItem('groups').split(',') else []
    if checked
      groups.push(@props.id.toString())
    else
      groups = _.without(groups, @props.id.toString())
    sessionStorage.setItem('groups', _.uniq(groups))

  render: () ->
    return (
      <div className="large-4 columns">
        <input type="checkbox" value={@props.id} id={@props.id} checked={@state.checked} onChange={@handleChange} />
        <label htmlFor={@props.id}>{@props.name}</label>
      </div>
    )
