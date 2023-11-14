meta:
  id: ttbin
  file-extension: ttbin
  endian: le
seq:
  - id: file_format
    type: u1
  - id: version
    type: u1
    repeat: expr
    repeat-expr: 4
