class RallyNoResultsResponder < GenericResponder

  def call(env)
    @requests << request = Rack::Request.new(env)

    [200, {}, [
      <<-XML
        <QueryResult rallyAPIMajor="1" rallyAPIMinor="17">
        <Errors/>
        <Warnings/>
        <TotalResultCount>0</TotalResultCount>
        <StartIndex>1</StartIndex>
        <PageSize>20</PageSize>
        <Results/>
        </QueryResult>
      XML
    ]]
  end
end
