meta:
  id: ttbin
  file-extension: ttbin
  endian: le
types:
  version:
    seq:
      - id: number
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
      - id: number_of_objects
        type: u1
seq:
  - id: file_header_tag
    contents:
      - 0x20
  - id: version
    type: version
  - id: firmware_v10
    size: 6
  - id: header
    type: file_header
