# frozen_string_literal: true

def bigger?(x, y)
  if x < y
    true
  else
    false
  end
end

def zero_is_true
  if 0
    "0 is true"
  else
    "0 is false"
  end
end

FALSEY = [nil, false, 0, "", [], {}, "0"].freeze

def falsey_values
  FALSEY.reject { |value| value }
end

def print_hello_world
  puts "Hello World"
end

def starts_with_one(text)
  case text
  when /^1/
    "the string starts with one"
  else
    "I don't know what the string starts with"
  end
end

def label_for(a)
  case a
  when 1, 2 then "a is one or two"
  when 3 then "a is three"
  else "I don't know what a is"
  end
end
