class PostSerializer
    include FastJsonapi::ObjectSerializer
    attributes :body
  end