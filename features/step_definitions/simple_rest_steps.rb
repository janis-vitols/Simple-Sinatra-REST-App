Given /^system have such users:$/ do |users|
  users.hashes.each do |user|
    User.create(user.symbolize_keys)
  end
end

When /^the client requests GET (.*)$/ do |path|
  get(path)
end

#Then /^the response should be JSON:$/ do |json|
  #expected_json = JSON.parse(json)
  #response_json = JSON.parse(last_response.body)

  #expect(response_json).to eq(expected_json)
#end

Then /^the response should be JSON from all users$/ do
  expected_json = JSON.parse(User.all.to_json)
  response_json = JSON.parse(last_response.body)

  expect(response_json).to eq(expected_json)
end

When /^the client requests POST (.*) with params:$/ do |path, params_table|
  params = params_table.hashes.first
  post(path, params)
end

Then /^the response status should be (#{CAPTURE_INTEGER})$/ do |status|
  expect(last_response.status).to eq(status)
end
