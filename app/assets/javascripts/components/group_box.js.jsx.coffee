@GroupBox = React.createClass
  getInitialState: () ->
    data: []
  componentDidMount: () ->
    $.ajax
      url: @props.url
      dataType: 'json'
      cache: false
      success: ((data) ->
        @setState data: data
        return
      ).bind(this)
      error: ((xhr, status, err) ->
        console.error @props.url, status, err.toString()
        return
      ).bind(this)
  render: () ->
    return (
      <div className="row">
        <GroupList data={@state.data} />
      </div>
    )
