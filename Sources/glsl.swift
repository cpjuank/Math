//MARK: glsl.swift

// Copyright (c) 2015-2016 David Turnbull
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and/or associated documentation files (the
// "Materials"), to deal in the Materials without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Materials, and to
// permit persons to whom the Materials are furnished to do so, subject to
// the following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Materials.
//
// THE MATERIALS ARE PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
// IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
// CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
// TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
// MATERIALS OR THE USE OR OTHER DEALINGS IN THE MATERIALS.

#if os(macOS)
import Darwin
#else
import Glibc
#endif

// Portability for the OpenGL Shading Language 4.50


// Sections 4.1.5 and 4.1.6

public typealias vec2 = Vector2<Float>
public typealias dvec2 = Vector2<Double>
public typealias ivec2 = Vector2<Int32>
public typealias uvec2 = Vector2<UInt32>
public typealias bvec2 = Vector2b

public typealias vec3 = Vector3<Float>
public typealias dvec3 = Vector3<Double>
public typealias ivec3 = Vector3<Int32>
public typealias uvec3 = Vector3<UInt32>
public typealias bvec3 = Vector3b

public typealias vec4 = Vector4<Float>
public typealias dvec4 = Vector4<Double>
public typealias ivec4 = Vector4<Int32>
public typealias uvec4 = Vector4<UInt32>
public typealias bvec4 = Vector4b

public typealias mat2 = Matrix2x2<Float>
public typealias dmat2 = Matrix2x2<Double>
public typealias mat3 = Matrix3x3<Float>
public typealias dmat3 = Matrix3x3<Double>
public typealias mat4 = Matrix4x4<Float>
public typealias dmat4 = Matrix4x4<Double>

public typealias mat2x2 = Matrix2x2<Float>
public typealias dmat2x2 = Matrix2x2<Double>
public typealias mat2x3 = Matrix2x3<Float>
public typealias dmat2x3 = Matrix2x3<Double>
public typealias mat2x4 = Matrix2x4<Float>
public typealias dmat2x4 = Matrix2x4<Double>

public typealias mat3x2 = Matrix3x2<Float>
public typealias dmat3x2 = Matrix3x2<Double>
public typealias mat3x3 = Matrix3x3<Float>
public typealias dmat3x3 = Matrix3x3<Double>
public typealias mat3x4 = Matrix3x4<Float>
public typealias dmat3x4 = Matrix3x4<Double>

public typealias mat4x2 = Matrix4x2<Float>
public typealias dmat4x2 = Matrix4x2<Double>
public typealias mat4x3 = Matrix4x3<Float>
public typealias dmat4x3 = Matrix4x3<Double>
public typealias mat4x4 = Matrix4x4<Float>
public typealias dmat4x4 = Matrix4x4<Double>


// Section 8.1 Angle and Trignometry Functions


public func radians<T:FloatingPointArithmeticType>(_ degrees:T) -> T {
    return degrees * 0.017453292519943295
}


public func radians<genType:VectorType>(_ degrees:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(degrees, radians)
}


public func degrees<T:FloatingPointArithmeticType>(_ radians:T) -> T {
    return radians * 57.29577951308232
}


public func degrees<genType:VectorType>(_ radians:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(radians, degrees)
}


public func sin<genType:VectorType>(_ angle:genType) -> genType where
    genType.Element == Float
{
    return genType(angle, sinf)
}

public func sin<genType:VectorType>(_ angle:genType) -> genType where
    genType.Element == Double
{
    return genType(angle, sin)
}


public func cos<genType:VectorType>(_ angle:genType) -> genType where
    genType.Element == Float
{
    return genType(angle, cosf)
}

public func cos<genType:VectorType>(_ angle:genType) -> genType where
    genType.Element == Double
{
    return genType(angle, cos)
}


public func tan<genType:VectorType>(_ angle:genType) -> genType where
    genType.Element == Float
{
    return genType(angle, tanf)
}

public func tan<genType:VectorType>(_ angle:genType) -> genType where
    genType.Element == Double
{
    return genType(angle, tan)
}


public func asin<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, asinf)
}

public func asin<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, asin)
}


public func acos<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, acosf)
}

public func acos<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, acos)
}


public func atan<genType:VectorType>(_ y:genType.Element, _ x:genType) -> genType where
    genType.Element == Float
{
    return genType(y, x, atan2f)
}

public func atan<genType:VectorType>(_ y:genType.Element, _ x:genType) -> genType where
    genType.Element == Double
{
    return genType(y, x, atan2)
}


public func atan<genType:VectorType>(_ y:genType, _ x:genType.Element) -> genType where
    genType.Element == Float
{
    return genType(y, x, atan2f)
}

public func atan<genType:VectorType>(_ y:genType, _ x:genType.Element) -> genType where
    genType.Element == Double
{
    return genType(y, x, atan2)
}


public func atan<genType:VectorType>(_ y:genType, _ x:genType) -> genType where
    genType.Element == Float
{
    return genType(y, x, atan2f)
}

public func atan<genType:VectorType>(_ y:genType, _ x:genType) -> genType where
    genType.Element == Double
{
    return genType(y, x, atan2)
}

public func atan<genType:VectorType>(_ yoverx:genType) -> genType where
    genType.Element == Float
{
    return genType(yoverx, atanf)
}


public func atan<genType:VectorType>(_ yoverx:genType) -> genType where
    genType.Element == Double
{
    return genType(yoverx, atan)
}



public func sinh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, sinhf)
}

public func sinh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, sinh)
}


public func cosh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, coshf)
}

public func cosh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, cosh)
}


public func tanh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, tanhf)
}

public func tanh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, tanh)
}


public func asinh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, asinhf)
}

public func asinh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, asinh)
}


public func acosh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, acoshf)
}

public func acosh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, acosh)
}


public func atanh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, atanhf)
}

public func atanh<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, atanh)
}


// Section 8.2 Exponential Functions

public func pow<genType:VectorType>(_ x:genType, _ y:genType) -> genType where
    genType.Element == Float
{
    return genType(x, y, powf)
}

public func pow<genType:VectorType>(_ x:genType, _ y:genType) -> genType where
    genType.Element == Double
{
    return genType(x, y, pow)
}


public func exp<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, expf)
}

public func exp<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, exp)
}

public func log<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, logf)
}

public func log<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, log)
}

public func exp2<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, exp2f)
}

public func exp2<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, exp2)
}

public func log2<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, log2f)
}

public func log2<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, log2)
}


public func sqrt<genType:VectorType>(_ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(x, sqrt)
}


public func inversesqrt<genType:VectorType>(_ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(x) { 1 / sqrt($0) }
}


// Section 8.3 Common Functions


public func abs<genType:VectorType>(_ x:genType) -> genType where
    genType.Element:AbsoluteValuable
{
    return genType(x, abs)
}


public func sign<Vector: VectorType>(_ x:Vector) -> Vector where
    Vector.Element: SignedNumber
{

    let function : (Vector.Element) -> Vector.Element = { component in
        if component == 0 {
            return 0
        } else if component < 0 {
            return -1
        } else {
            return 1
        }
    }

    return Vector(x, function)
}


public func floor<genType:VectorType>(_ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(x, floor)
}


public func trunc<genType:VectorType>(_ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(x, trunc)
}


public func round<genType:VectorType>(_ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(x, round)
}

private func roundEven(_ x:Float) -> Float {
    let (frac, int) = modf(x)
    if frac != 0.5 && frac != -0.5 {
        return round(x);
    }
    if int.truncatingRemainder(dividingBy: 2.0) == 0 {
        return int
    }
    return int + (x <= 0 ? -1 : 1)
}

private func roundEven(_ x:Double) -> Double {
    let (frac, int) = modf(x)
    if frac != 0.5 && frac != -0.5 {
        return round(x);
    }
    if int.truncatingRemainder(dividingBy: 2.0) == 0 {
        return int
    }
    return int + (x <= 0 ? -1 : 1)
}


public func roundEven<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Float
{
    return genType(x, roundEven)
}

public func roundEven<genType:VectorType>(_ x:genType) -> genType where
    genType.Element == Double
{
    return genType(x, roundEven)
}


public func ceil<genType:VectorType>(_ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(x, ceil)
}


public func fract<T:VectorType>
    (_ x:T) -> T where T.Element:FloatingPointArithmeticType {
    let one_minus_ulp:T.Element
    switch(x) {
    case is Float:
        one_minus_ulp = T.Element(0x1.fffffep-1)
    case is Double:
        one_minus_ulp = T.Element(0x1.fffffffffffffp-1)
    default:
        preconditionFailure()
    }
    return min(x - floor(x), one_minus_ulp)
}


public func mod<genType:VectorType>
    (_ x:genType, _ y:genType.Element) -> genType {
    return x % y
}


public func mod<genType:VectorType>
    (_ x:genType, _ y:genType) -> genType {
    return x % y
}


public func modf<genType:VectorType>(_ x:genType) -> (genType, genType) where
    genType.Iterator.Element == Float, genType.Element == Float
{
    var result = (x, x)
    for (i, value) in x.enumerated() {
        let resultI = modf(value)
        result.0[i] = resultI.0
        result.1[i] = resultI.1
    }
    return result
}

public func modf<genType:VectorType>(_ x:genType) -> (genType, genType) where
    genType.Iterator.Element == Double, genType.Element == Double
{
    var result = (x, x)
    for (i, value) in x.enumerated() {
        let resultI = modf(value)
        result.0[i] = resultI.0
        result.1[i] = resultI.1
    }
    return result
}


public func min<genType:VectorType>(_ x:genType, _ y:genType) -> genType {
    return genType(x, y, min)
}


public func min<genType:VectorType>(_ x:genType, _ y:genType.Element) -> genType {
    return genType(x, y, min)
}


public func max<genType:VectorType>(_ x:genType, _ y:genType) -> genType {
    return genType(x, y, max)
}


public func max<genType:VectorType>(_ x:genType, _ y:genType.Element) -> genType {
    return genType(x, y, max)
}


public func clamp<genType:VectorType>(_ x:genType, _ minVal:genType, _ maxVal:genType) -> genType {
    return genType(x, minVal, maxVal) {
        (_ x:genType.Element, minVal:genType.Element, maxVal:genType.Element) in
        min(max(x, minVal), maxVal)
    }
}


public func clamp<genType:VectorType>
    (_ x:genType, _ minVal:genType.Element, _ maxVal:genType.Element) -> genType {
    return genType(x) { min(max($0, minVal), maxVal) }
}


public func mix<genType:VectorType>(_ x:genType, _ y:genType, _ a:genType) -> genType {
    return genType(x, y, a) {
        (_ x:genType.Element, y:genType.Element, a:genType.Element) in
        let t = x * (1 - a)
        return t + y * a
    }
}


public func mix<genType:VectorType>(_ x:genType, _ y:genType, _ a:genType.Element) -> genType {
    let inv = 1 - a
    return genType(x, y) {$0 * inv + $1 * a}
}


public func mix<genType:VectorType, genBType:BooleanVectorType>(_ x:genType, _ y:genType, _ a:genBType) -> genType
    where genType.BooleanVector == genBType.BooleanVector
{
    return genType(x, y, a) {$2 ? $1 : $0}
}


public func step<genType:VectorType>(_ edge:genType, _ x:genType) -> genType {
    return genType(edge, x) { $1 < $0 ? 0 : 1}
}


public func step<genType:VectorType>(_ edge:genType.Element, _ x:genType) -> genType {
    return genType(x) { $0 < edge ? 0 : 1}
}


public func smoothstep<genType:VectorType>(_ edge0:genType, _ edge1:genType, _ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(edge0, edge1, x) { (edge0, edge1, x) in
        var i = x-edge0
        i /= edge1-edge0
        let t = min(max( i, 0), 1)
        i = 3 - 2 * t
        return t * t * i
    }
}


public func smoothstep<genType:VectorType>(_ edge0:genType.Element, _ edge1:genType.Element, _ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(x) { (x) in
        var i = x-edge0
        i /= edge1-edge0
        let t = min(max( i, 0), 1)
        i = 3 - 2 * t
        return t * t * i
    }
}


public func isnan<genType:VectorType>(_ x:genType) -> genType.BooleanVector
    where
    genType.Element:FloatingPoint,
    genType.BooleanVector:BooleanVectorType,
    genType.BooleanVector == genType.BooleanVector.BooleanVector
{
    return genType.BooleanVector(x) {$0.isNaN}
}


public func isinf<genType:VectorType>(_ x:genType) -> genType.BooleanVector
    where
    genType.Element:FloatingPoint,
    genType.BooleanVector:BooleanVectorType,
    genType.BooleanVector == genType.BooleanVector.BooleanVector
{
    return genType.BooleanVector(x) {$0.isInfinite}
}


public func floatBitsToInt<genType:VectorType>(_ value:genType) -> genType.Int32Vector where
    genType.Int32Vector:VectorType,
    genType.Element == Float,
    genType.BooleanVector == genType.Int32Vector.BooleanVector
{
    return genType.Int32Vector( value ) {
        unsafeBitCast($0 , to: genType.Int32Vector.Element.self)
    }
}


public func floatBitsToUint<genType:VectorType>(_ value:genType) -> genType.UInt32Vector where
    genType.UInt32Vector:VectorType,
    genType.Element == Float,
    genType.BooleanVector == genType.UInt32Vector.BooleanVector
{
    return genType.UInt32Vector( value ) {
        unsafeBitCast($0 , to: genType.UInt32Vector.Element.self)
    }
}


public func intBitsToFloat<genType:VectorType>(_ value:genType) -> genType.FloatVector where
    genType.FloatVector:VectorType,
    genType.Element == Int32,
    genType.BooleanVector == genType.FloatVector.BooleanVector
{
    return genType.FloatVector( value ) {
        unsafeBitCast($0 , to: genType.FloatVector.Element.self)
    }
}


public func uintBitsToFloat<genType:VectorType>(_ value:genType) -> genType.FloatVector where
    genType.FloatVector:VectorType,
    genType.Element == UInt32,
    genType.BooleanVector == genType.FloatVector.BooleanVector
{
    return genType.FloatVector( value ) {
        unsafeBitCast($0 , to: genType.FloatVector.Element.self)
    }
}


public func fma<genType:VectorType>(_ a:genType, _ b:genType, _ c:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return genType(a, b, c, fma)
}


public func frexp<genType:VectorType, genIType:VectorType>(_ x:genType) -> (genType, genIType) where
    genType.Element == Float, genType.Iterator.Element == Float,
    genIType.Element == Int32,
    genType.BooleanVector == genIType.BooleanVector
{

    var result = (x, genIType())
    for (i, value) in x.enumerated() {
        let resultI = frexp(value)
        result.0[i] = resultI.0
        result.1[i] = Int32(resultI.1)
    }
    return result
}

public func frexp<genType:VectorType, genIType:VectorType>(_ x:genType) -> (genType, genIType) where
    genType.Element == Double, genType.Iterator.Element == Double,
    genIType.Element == Int,
    genType.BooleanVector == genIType.BooleanVector
{
    var result = (x, genIType())
    for (i, value) in x.enumerated() {
        let resultI = frexp(value)
        result.0[i] = resultI.0
        result.1[i] = resultI.1
    }
    return result
}


public func ldexp<genType:VectorType, genIType:VectorType>(_ x:genType, _ exp:genIType) -> genType where
    genType.Element == Double,
    genIType.Element == Int32,
    genType.BooleanVector == genIType.BooleanVector
{
    return genType(x, exp, ldexp)
}

public func ldexp<genType:VectorType, genIType:VectorType>(_ x:genType, _ exp:genIType) -> genType where
    genType.Element == Float,
    genIType.Element == Int32,
    genType.BooleanVector == genIType.BooleanVector
{
    return genType(x, exp, ldexpf)
}


// Section 8.4 Floating-Point Pack and Unpack Functions


public func packUnorm2x16(_ v:vec2) -> UInt32 {
    let i = uvec2(round(clamp(v, 0, 1) * 0xffff))
    return (i.y << 16) &+ i.x
}


public func packSnorm2x16(_ v:vec2) -> UInt32 {
    let i = ivec2(round(clamp(v, -1, 1) * 0x7fff))
    return ((UInt32(bitPattern: i.y) & 0xFFFF) << 16) &+ (UInt32(bitPattern: i.x) & 0xFFFF)
}


public func packUnorm4x8(_ v:vec4) -> UInt32 {
    let i = uvec4(round(clamp(v, 0, 1) * 0xff))
    return (i.w << 24) &+ (i.z << 16) &+ (i.y << 8) &+ i.x
}


public func packSnorm4x8(_ v:vec4) -> UInt32 {
    let i = ivec4(round(clamp(v, -1, 1) * 0x7f))
    var r = (UInt32(bitPattern: i.w) & 0xFF) << 24
    r += (UInt32(bitPattern: i.z) & 0xFF) << 16
    r += (UInt32(bitPattern: i.y) & 0xFF) << 8
    r += UInt32(bitPattern: i.x)
    return r
}


public func unpackUnorm2x16(_ p:UInt32) -> vec2 {
    let r = vec2(
        Float(p & 0xffff),
        Float(p >> 16 & 0xffff)
    )
    return r / 0xffff
}


public func unpackSnorm2x16(_ p:UInt32) -> vec2 {
    let p0 = UInt16(p >> 0 & 0xffff)
    let p1 = UInt16(p >> 16 & 0xffff)
    let r = vec2(
        Float(Int16(bitPattern: p0)),
        Float(Int16(bitPattern: p1))
    )
    return clamp(r / 0x7fff, -1, 1)
}


public func unpackUnorm4x8(_ p:UInt32) -> vec4 {
    let r = vec4(
        Float(p & 0xff),
        Float(p >> 8 & 0xff),
        Float(p >> 16 & 0xff),
        Float(p >> 24 & 0xff)
    )
    return r / 0xff
}


public func unpackSnorm4x8(_ p:UInt32) -> vec4 {
    let p0 = UInt8(p >> 0 & 0xff)
    let p1 = UInt8(p >> 8 & 0xff)
    let p2 = UInt8(p >> 16 & 0xff)
    let p3 = UInt8(p >> 24 & 0xff)
    let r = vec4(
        Float(Int8(bitPattern: p0)),
        Float(Int8(bitPattern: p1)),
        Float(Int8(bitPattern: p2)),
        Float(Int8(bitPattern: p3))
    )
    return clamp(r / 0x7f, -1, 1)
}


public func packDouble2x32 (_ v:uvec2) -> Double {
    let i:UInt64 = (UInt64(v.y) << 32) + UInt64(v.x)
    //return unsafeBitCast(i, to: Double.self)
    return Double(bitPattern: i)
}


public func unpackDouble2x32 (_ v:Double) -> uvec2 {
    //let d = unsafeBitCast(v, to: UInt64.self)
    let d = v.bitPattern
    return uvec2(
        UInt32( d & 0xFFFFFFFF ),
        UInt32( (d >> 32) & 0xFFFFFFFF )
    )
}


public func packHalf2x16 (_ v:vec2) -> UInt32 {
    var ret:UInt32 = UInt32(SGLMath.halfFromFloat(v[0]))
    ret += UInt32(SGLMath.halfFromFloat(v[1])) << 16
    return ret
}


public func unpackHalf2x16 (_ v:UInt32) -> vec2 {
    return vec2 (
        SGLMath.floatFromHalf( UInt16(v & 0xFFFF) ),
        SGLMath.floatFromHalf( UInt16((v>>16) & 0xFFFF) )
    )
}


// Section 8.5 Geometric Functions


public func length<genType:VectorType>(_ x:genType) -> genType.Element where
    genType.Element:FloatingPointArithmeticType
{
    return sqrt(dot(x, x))
}


public func distance<genType:VectorType>(_ p0:genType, _ p1:genType) -> genType.Element where
    genType.Element:FloatingPointArithmeticType
{
    return length(p0 - p1)
}


public func dot<genType:VectorType>(_ x:genType, _ y:genType) -> genType.Element where
    genType.Element:FloatingPointArithmeticType
{
    switch (x) {
    case is Vector2<genType.Element>:
        let xx = x as! Vector2<genType.Element>
        let yy = y as! Vector2<genType.Element>
        return xx.x * yy.x + xx.y * yy.y
    case is Vector3<genType.Element>:
        let xx = x as! Vector3<genType.Element>
        let yy = y as! Vector3<genType.Element>
        let z = xx.x * yy.x + xx.y * yy.y
        return z + xx.z * yy.z
    case is Vector4<genType.Element>:
        let xx = x as! Vector4<genType.Element>
        let yy = y as! Vector4<genType.Element>
        let z = xx.x * yy.x + xx.y * yy.y
        return z + xx.z * yy.z + xx.w * yy.w
    default:
        preconditionFailure()
    }
    // Above is a bit faster in debug builds
    //let a = genType(x, y, *)
    //return a.reduce(0) { $0 + ($1 as! genType.Element) }
}


public func cross<T:FloatingPointArithmeticType>
    (_ x:Vector3<T>, _ y:Vector3<T>) -> Vector3<T> {
    var x1:T = x.y * y.z
    x1 = x1 - y.y * x.z
    var y1:T = x.z * y.x
    y1 = y1 - y.z * x.x
    var z1:T = x.x * y.y
    z1 = z1 - y.x * x.y
    return Vector3<T>(x1,y1,z1)
}


public func normalize<genType:VectorType>(_ x:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return x / length(x)
}


public func faceforward<genType:VectorType>(_ n:genType, _ i:genType, _ nRef:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    return dot(nRef, i) < 0 ? n : -n
}


public func reflect<genType:VectorType>(_ i:genType, _ n:genType) -> genType where
    genType.Element:FloatingPointArithmeticType
{
    let f = 2 * dot(n, i)
    return i - f * n
}


public func refract<genType:VectorType>(_ i:genType, _ n:genType, _ eta:genType.Element) -> genType where
    genType.Element == Float
{
    let dotni = dot(n, i)
    var k = dotni * dotni
    k = 1 - k
    k = eta * eta * k
    k = 1 - k
    if (k < 0) { return genType() }
    let x = eta * dotni + sqrtf(k)
    let r = x * n
    return eta * i - r
}

public func refract<genType:VectorType>(_ i:genType, _ n:genType, _ eta:genType.Element) -> genType where
    genType.Element == Double
{
    let dotni = dot(n, i)
    var k = dotni * dotni
    k = 1 - k
    k = eta * eta * k
    k = 1 - k
    if (k < 0) { return genType() }
    let x = eta * dotni + (k)
    let r = x * n
    return eta * i - r
}


// Section 8.6 Matrix Functions


public func matrixCompMult<mat:MatrixType>(_ x:mat, _ y:mat) -> mat {
    return mat(x, y, *)
}


public func outerProduct<T:ArithmeticType>(_ c:Vector2<T>, _ r:Vector2<T>) -> Matrix2x2<T> {
    return Matrix2x2(
        c * r[0], c * r[1]
    )
}


public func outerProduct<T:ArithmeticType>(_ c:Vector3<T>, _ r:Vector2<T>) -> Matrix2x3<T> {
    return Matrix2x3(
        c * r[0], c * r[1]
    )
}


public func outerProduct<T:ArithmeticType>(_ c:Vector4<T>, _ r:Vector2<T>) -> Matrix2x4<T> {
    return Matrix2x4(
        c * r[0], c * r[1]
    )
}


public func outerProduct<T:ArithmeticType>(_ c:Vector2<T>, _ r:Vector3<T>) -> Matrix3x2<T> {
    return Matrix3x2(
        c * r[0], c * r[1], c * r[2]
    )
}


public func outerProduct<T:ArithmeticType>(_ c:Vector3<T>, _ r:Vector3<T>) -> Matrix3x3<T> {
    return Matrix3x3(
        c * r[0], c * r[1], c * r[2]
    )
}


public func outerProduct<T:ArithmeticType>(_ c:Vector4<T>, _ r:Vector3<T>) -> Matrix3x4<T> {
    return Matrix3x4(
        c * r[0], c * r[1], c * r[2]
    )
}


public func outerProduct<T:ArithmeticType>(_ c:Vector2<T>, _ r:Vector4<T>) -> Matrix4x2<T> {
    let c1 = c * r[0]
    let c2 = c * r[1]
    let c3 = c * r[2]
    let c4 = c * r[3]

    return Matrix4x2(
        c1, c2, c3, c4
    )
}


public func outerProduct<T:ArithmeticType>(_ c:Vector3<T>, _ r:Vector4<T>) -> Matrix4x3<T> {

    let c1 = c * r[0]
    let c2 = c * r[1]
    let c3 = c * r[2]
    let c4 = c * r[3]

    return Matrix4x3(
        c1, c2, c3, c4
    )
}


public func outerProduct<T:ArithmeticType>(_ c:Vector4<T>, _ r:Vector4<T>) -> Matrix4x4<T> {
    let c1 = c * r[0]
    let c2 = c * r[1]
    let c3 = c * r[2]
    let c4 = c * r[3]

    return Matrix4x4(
        c1, c2, c3, c4
    )
}


public func transpose<T:ArithmeticType>(_ m:Matrix2x2<T>) -> Matrix2x2<T> {
    return m.transpose
}


public func transpose<T:ArithmeticType>(_ m:Matrix2x3<T>) -> Matrix3x2<T> {
    return m.transpose
}


public func transpose<T:ArithmeticType>(_ m:Matrix2x4<T>) -> Matrix4x2<T> {
    return m.transpose
}


public func transpose<T:ArithmeticType>(_ m:Matrix3x2<T>) -> Matrix2x3<T> {
    return m.transpose
}


public func transpose<T:ArithmeticType>(_ m:Matrix3x3<T>) -> Matrix3x3<T> {
    return m.transpose
}


public func transpose<T:ArithmeticType>(_ m:Matrix3x4<T>) -> Matrix4x3<T> {
    return m.transpose
}


public func transpose<T:ArithmeticType>(_ m:Matrix4x2<T>) -> Matrix2x4<T> {
    return m.transpose
}


public func transpose<T:ArithmeticType>(_ m:Matrix4x3<T>) -> Matrix3x4<T> {
    return m.transpose
}


public func transpose<T:ArithmeticType>(_ m:Matrix4x4<T>) -> Matrix4x4<T> {
    return m.transpose
}


public func determinant<T:ArithmeticType>(_ m:Matrix2x2<T>) -> T {
    return m.determinant
}


public func determinant<T:ArithmeticType>(_ m:Matrix3x3<T>) -> T {
    return m.determinant
}


public func determinant<T:ArithmeticType>(_ m:Matrix4x4<T>) -> T {
    return m.determinant
}


public func inverse<T:ArithmeticType>(_ m:Matrix2x2<T>) -> Matrix2x2<T> {
    return m.inverse
}


public func inverse<T:ArithmeticType>(_ m:Matrix3x3<T>) -> Matrix3x3<T> {
    return m.inverse
}


public func inverse<T:ArithmeticType>(_ m:Matrix4x4<T>) -> Matrix4x4<T> {
    return m.inverse
}


// Section 8.7 Vector Relational Functions


public func lessThan<genType:VectorType>(_ x:genType, _ y:genType) -> genType.BooleanVector where
    genType.BooleanVector:BooleanVectorType,
    genType.BooleanVector == genType.BooleanVector.BooleanVector
{
    return genType.BooleanVector(x, y, <)
}


public func lessThanEqual<genType:VectorType>(_ x:genType, _ y:genType) -> genType.BooleanVector where
    genType.BooleanVector:BooleanVectorType,
    genType.BooleanVector == genType.BooleanVector.BooleanVector
{
    return genType.BooleanVector(x, y, <=)
}


public func greaterThan<genType:VectorType>(_ x:genType, _ y:genType) -> genType.BooleanVector where
    genType.BooleanVector:BooleanVectorType,
    genType.BooleanVector == genType.BooleanVector.BooleanVector
{
    return genType.BooleanVector(x, y, >)
}


public func greaterThanEqual<genType:VectorType>(_ x:genType, _ y:genType) -> genType.BooleanVector where
    genType.BooleanVector:BooleanVectorType,
    genType.BooleanVector == genType.BooleanVector.BooleanVector
{
    return genType.BooleanVector(x, y, >=)
}


public func equal<genType:VectorType>(_ x:genType, _ y:genType) -> genType.BooleanVector where
    genType.BooleanVector:BooleanVectorType,
    genType.BooleanVector == genType.BooleanVector.BooleanVector
{
    return genType.BooleanVector(x, y, ==)
}


public func notEqual<genType:VectorType>(_ x:genType, _ y:genType) -> genType.BooleanVector where
    genType.BooleanVector:BooleanVectorType,
    genType.BooleanVector == genType.BooleanVector.BooleanVector
{
    return genType.BooleanVector(x, y, !=)
}


public func any<bvec:BooleanVectorType>(_ x:bvec) -> bvec.Iterator.Element where
    bvec.Iterator.Element == Bool
{
    return x.reduce(false) { $0 || $1 }
}


public func all<bvec:BooleanVectorType>(_ x:bvec) -> bvec.Iterator.Element where
    bvec.Iterator.Element == Bool
{
    return x.reduce(true) { $0 && $1 }
}


public func not<bvec:BooleanVectorType>(_ x:bvec) -> bvec {
    return bvec(x, !)
}
