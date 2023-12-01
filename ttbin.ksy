meta:
  id: ttbin
  file-extension: ttbin
  endian: le
types:
  record_length:
    seq:
      - id: tag
        type: u1
      - id: lenght
        type: u2
  file_header:
    seq:
      - id: product_id
        type: u2
      - id: start_time
        type: u4
        doc: Local time
      - id: software_version
        size: 16
      - id: gps_firmware_version
        size: 80
      - id: watch_time
        type: u4
        doc: Local time
      - id: local_time_offset
        type: u4
        doc: Local time offset in seconds from UTC
      - id: reserved_0
        type: u1
      - id: length_count
        type: u1
      - id: zzzzz
        type: record_length
        repeat: expr
        repeat-expr: length_count
seq:
  - id: file_header_tag
    contents:
      - 0x20
    doc: The first tag is 0x20, so we read it as a magic number
  - id: firmware_version
    type: u2
  - id: firmware_v9
    size: 3
    if: firmware_version == 9
  - id: firmware_v10
    size: 6
    if: firmware_version == 10
  - id: header
    type: file_header
