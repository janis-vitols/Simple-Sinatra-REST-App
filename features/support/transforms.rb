CAPTURE_INTEGER = Transform(/^\d+$/) do |number|
  number.to_i
end
