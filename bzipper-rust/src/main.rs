//use std::io::prelude::*;
//use bzip2::Compression;
//use bzip2::read::{BzEncoder, BzDecoder};
//use std::fs::File;
//use std::io;
//
//fn main() {
//
//    let mut f = File::open("/tmp/vmlinuz").unwrap();
//    let res = f.metadata();//.unwrap().len();
//    let mut sz = res.unwrap().len();
//    println!("The bytes sz: {:?}", sz); //&buffer[..n]);
//
//    let mut buffer = Vec::with_capacity(sz as usize);
//
//    let buf_slice = buffer.as_mut_slice();
//
//    // read up to 10 bytes
//    let n = f.read(buf_slice).unwrap();
//
//    println!("The bytes sz: {:?}", &buf_slice[..10]);
//
////
////    let mut buffer= Vec::new();
////    let mut vmlinuz = File::open("/tmp/vmlinuz").unwrap();
////    for byte in vmlinuz.bytes() {
////        buffer.append(&mut byte.unwrap());// += byte.unwrap();
////    }
//////    vmlinuz.read_to_end(&mut buffer).unwrap();
////
////    // Round trip some bytes from a byte source, into a compressor, into a
////    // decompressor, and finally into a vector.
////    //let data = buffer.as_bytes(); //as_bytes();
////    let compressor = BzEncoder::new(buffer, Compression::Best);
////    let mut decompressor = BzDecoder::new(compressor);
////
////    let mut contents = String::new();
////    decompressor.read_to_string(&mut contents).unwrap();
////    assert_eq!(contents, "Hello, World!");
//}


use std::io;
use std::io::prelude::*;
use std::fs::File;
use bzip2::bufread; //::BzDecoder;

fn main() -> io::Result<()> {
    let mut f = File::open("/tmp/vmlinuz").unwrap();
    let mut d = decompress_kernel_image(&mut f);
    let mut contents = Vec::new();
    let m = d.read_to_end(&mut contents).unwrap();
    Ok(())
}

fn decompress_kernel_image<F>(compressed_image: &mut F)
    -> bufread::BzDecoder<&[u8]>
where
    F: Read + Seek,
{
    let mut buffer = Vec::new();
    let n = compressed_image.read_to_end(&mut buffer).unwrap();
    assert_eq!(n, 5263964);
    let mut d = bufread::BzDecoder::new(buffer.as_slice());
    //let mut contents = Vec::new();
    //let m = d.read_to_end(&mut contents).unwrap();
    //assert_eq!(m, 24020912);

    //contents
    d.chain()
}