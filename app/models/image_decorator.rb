Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini         =>  '100x100#',
    :small_thumb  =>  '216x216>',
    :large_thumb  =>  '320x320>',
    :large        =>  '600x600>'
  }
end
