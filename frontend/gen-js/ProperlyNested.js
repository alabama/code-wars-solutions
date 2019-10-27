//
// Autogenerated by Thrift Compiler (0.13.0)
//
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
//
if (typeof Int64 === 'undefined' && typeof require === 'function') {
  var Int64 = require('node-int64');
}


//HELPER FUNCTIONS AND STRUCTURES

ProperlyNested_ping_args = function(args) {
};
ProperlyNested_ping_args.prototype = {};
ProperlyNested_ping_args.prototype.read = function(input) {
  input.readStructBegin();
  while (true) {
    var ret = input.readFieldBegin();
    var ftype = ret.ftype;
    if (ftype == Thrift.Type.STOP) {
      break;
    }
    input.skip(ftype);
    input.readFieldEnd();
  }
  input.readStructEnd();
  return;
};

ProperlyNested_ping_args.prototype.write = function(output) {
  output.writeStructBegin('ProperlyNested_ping_args');
  output.writeFieldStop();
  output.writeStructEnd();
  return;
};

ProperlyNested_ping_result = function(args) {
};
ProperlyNested_ping_result.prototype = {};
ProperlyNested_ping_result.prototype.read = function(input) {
  input.readStructBegin();
  while (true) {
    var ret = input.readFieldBegin();
    var ftype = ret.ftype;
    if (ftype == Thrift.Type.STOP) {
      break;
    }
    input.skip(ftype);
    input.readFieldEnd();
  }
  input.readStructEnd();
  return;
};

ProperlyNested_ping_result.prototype.write = function(output) {
  output.writeStructBegin('ProperlyNested_ping_result');
  output.writeFieldStop();
  output.writeStructEnd();
  return;
};

ProperlyNested_is_properly_nested_args = function(args) {
  this.w = null;
  if (args) {
    if (args.w !== undefined && args.w !== null) {
      this.w = new Work(args.w);
    }
  }
};
ProperlyNested_is_properly_nested_args.prototype = {};
ProperlyNested_is_properly_nested_args.prototype.read = function(input) {
  input.readStructBegin();
  while (true) {
    var ret = input.readFieldBegin();
    var ftype = ret.ftype;
    var fid = ret.fid;
    if (ftype == Thrift.Type.STOP) {
      break;
    }
    switch (fid) {
      case 1:
      if (ftype == Thrift.Type.STRUCT) {
        this.w = new Work();
        this.w.read(input);
      } else {
        input.skip(ftype);
      }
      break;
      case 0:
        input.skip(ftype);
        break;
      default:
        input.skip(ftype);
    }
    input.readFieldEnd();
  }
  input.readStructEnd();
  return;
};

ProperlyNested_is_properly_nested_args.prototype.write = function(output) {
  output.writeStructBegin('ProperlyNested_is_properly_nested_args');
  if (this.w !== null && this.w !== undefined) {
    output.writeFieldBegin('w', Thrift.Type.STRUCT, 1);
    this.w.write(output);
    output.writeFieldEnd();
  }
  output.writeFieldStop();
  output.writeStructEnd();
  return;
};

ProperlyNested_is_properly_nested_result = function(args) {
  this.success = null;
  this.fail = null;
  if (args instanceof InvalidStringError) {
    this.fail = args;
    return;
  }
  if (args) {
    if (args.success !== undefined && args.success !== null) {
      this.success = args.success;
    }
    if (args.fail !== undefined && args.fail !== null) {
      this.fail = args.fail;
    }
  }
};
ProperlyNested_is_properly_nested_result.prototype = {};
ProperlyNested_is_properly_nested_result.prototype.read = function(input) {
  input.readStructBegin();
  while (true) {
    var ret = input.readFieldBegin();
    var ftype = ret.ftype;
    var fid = ret.fid;
    if (ftype == Thrift.Type.STOP) {
      break;
    }
    switch (fid) {
      case 0:
      if (ftype == Thrift.Type.BOOL) {
        this.success = input.readBool().value;
      } else {
        input.skip(ftype);
      }
      break;
      case 1:
      if (ftype == Thrift.Type.STRUCT) {
        this.fail = new InvalidStringError();
        this.fail.read(input);
      } else {
        input.skip(ftype);
      }
      break;
      default:
        input.skip(ftype);
    }
    input.readFieldEnd();
  }
  input.readStructEnd();
  return;
};

ProperlyNested_is_properly_nested_result.prototype.write = function(output) {
  output.writeStructBegin('ProperlyNested_is_properly_nested_result');
  if (this.success !== null && this.success !== undefined) {
    output.writeFieldBegin('success', Thrift.Type.BOOL, 0);
    output.writeBool(this.success);
    output.writeFieldEnd();
  }
  if (this.fail !== null && this.fail !== undefined) {
    output.writeFieldBegin('fail', Thrift.Type.STRUCT, 1);
    this.fail.write(output);
    output.writeFieldEnd();
  }
  output.writeFieldStop();
  output.writeStructEnd();
  return;
};

ProperlyNested_puts_io_args = function(args) {
  this.printable = null;
  if (args) {
    if (args.printable !== undefined && args.printable !== null) {
      this.printable = args.printable;
    }
  }
};
ProperlyNested_puts_io_args.prototype = {};
ProperlyNested_puts_io_args.prototype.read = function(input) {
  input.readStructBegin();
  while (true) {
    var ret = input.readFieldBegin();
    var ftype = ret.ftype;
    var fid = ret.fid;
    if (ftype == Thrift.Type.STOP) {
      break;
    }
    switch (fid) {
      case 1:
      if (ftype == Thrift.Type.STRING) {
        this.printable = input.readString().value;
      } else {
        input.skip(ftype);
      }
      break;
      case 0:
        input.skip(ftype);
        break;
      default:
        input.skip(ftype);
    }
    input.readFieldEnd();
  }
  input.readStructEnd();
  return;
};

ProperlyNested_puts_io_args.prototype.write = function(output) {
  output.writeStructBegin('ProperlyNested_puts_io_args');
  if (this.printable !== null && this.printable !== undefined) {
    output.writeFieldBegin('printable', Thrift.Type.STRING, 1);
    output.writeString(this.printable);
    output.writeFieldEnd();
  }
  output.writeFieldStop();
  output.writeStructEnd();
  return;
};

ProperlyNested_puts_io_result = function(args) {
};
ProperlyNested_puts_io_result.prototype = {};
ProperlyNested_puts_io_result.prototype.read = function(input) {
  input.readStructBegin();
  while (true) {
    var ret = input.readFieldBegin();
    var ftype = ret.ftype;
    if (ftype == Thrift.Type.STOP) {
      break;
    }
    input.skip(ftype);
    input.readFieldEnd();
  }
  input.readStructEnd();
  return;
};

ProperlyNested_puts_io_result.prototype.write = function(output) {
  output.writeStructBegin('ProperlyNested_puts_io_result');
  output.writeFieldStop();
  output.writeStructEnd();
  return;
};

ProperlyNestedClient = function(input, output) {
  this.input = input;
  this.output = (!output) ? input : output;
  this.seqid = 0;
};
ProperlyNestedClient.prototype = {};

ProperlyNestedClient.prototype.ping = function(callback) {
  this.send_ping(callback); 
  if (!callback) {
  this.recv_ping();
  }
};

ProperlyNestedClient.prototype.send_ping = function(callback) {
  var args = new ProperlyNested_ping_args();
  try {
    this.output.writeMessageBegin('ping', Thrift.MessageType.CALL, this.seqid);
    args.write(this.output);
    this.output.writeMessageEnd();
    if (callback) {
      var self = this;
      this.output.getTransport().flush(true, function() {
        var result = null;
        try {
          result = self.recv_ping();
        } catch (e) {
          result = e;
        }
        callback(result);
      });
    } else {
      return this.output.getTransport().flush();
    }
  }
  catch (e) {
    if (typeof this.output.getTransport().reset === 'function') {
      this.output.getTransport().reset();
    }
    throw e;
  }
};

ProperlyNestedClient.prototype.recv_ping = function() {
  var ret = this.input.readMessageBegin();
  var mtype = ret.mtype;
  if (mtype == Thrift.MessageType.EXCEPTION) {
    var x = new Thrift.TApplicationException();
    x.read(this.input);
    this.input.readMessageEnd();
    throw x;
  }
  var result = new ProperlyNested_ping_result();
  result.read(this.input);
  this.input.readMessageEnd();

  return;
};

ProperlyNestedClient.prototype.is_properly_nested = function(w, callback) {
  this.send_is_properly_nested(w, callback); 
  if (!callback) {
    return this.recv_is_properly_nested();
  }
};

ProperlyNestedClient.prototype.send_is_properly_nested = function(w, callback) {
  var params = {
    w: w
  };
  var args = new ProperlyNested_is_properly_nested_args(params);
  try {
    this.output.writeMessageBegin('is_properly_nested', Thrift.MessageType.CALL, this.seqid);
    args.write(this.output);
    this.output.writeMessageEnd();
    if (callback) {
      var self = this;
      this.output.getTransport().flush(true, function() {
        var result = null;
        try {
          result = self.recv_is_properly_nested();
        } catch (e) {
          result = e;
        }
        callback(result);
      });
    } else {
      return this.output.getTransport().flush();
    }
  }
  catch (e) {
    if (typeof this.output.getTransport().reset === 'function') {
      this.output.getTransport().reset();
    }
    throw e;
  }
};

ProperlyNestedClient.prototype.recv_is_properly_nested = function() {
  var ret = this.input.readMessageBegin();
  var mtype = ret.mtype;
  if (mtype == Thrift.MessageType.EXCEPTION) {
    var x = new Thrift.TApplicationException();
    x.read(this.input);
    this.input.readMessageEnd();
    throw x;
  }
  var result = new ProperlyNested_is_properly_nested_result();
  result.read(this.input);
  this.input.readMessageEnd();

  if (null !== result.fail) {
    throw result.fail;
  }
  if (null !== result.success) {
    return result.success;
  }
  throw 'is_properly_nested failed: unknown result';
};

ProperlyNestedClient.prototype.puts_io = function(printable, callback) {
  this.send_puts_io(printable, callback); 
};

ProperlyNestedClient.prototype.send_puts_io = function(printable, callback) {
  var params = {
    printable: printable
  };
  var args = new ProperlyNested_puts_io_args(params);
  try {
    this.output.writeMessageBegin('puts_io', Thrift.MessageType.ONEWAY, this.seqid);
    args.write(this.output);
    this.output.writeMessageEnd();
    if (callback) {
      this.output.getTransport().flush(true, null);
      callback();
    } else {
      return this.output.getTransport().flush();
    }
  }
  catch (e) {
    if (typeof this.output.getTransport().reset === 'function') {
      this.output.getTransport().reset();
    }
    throw e;
  }
};
