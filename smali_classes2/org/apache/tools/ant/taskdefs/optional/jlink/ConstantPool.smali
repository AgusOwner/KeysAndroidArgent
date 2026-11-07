.class Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;
.super Ljava/lang/Object;
.source "ClassNameReader.java"


# static fields
.field static final CLASS:B = 0x7t

.field static final DOUBLE:B = 0x6t

.field static final FIELDREF:B = 0x9t

.field static final FLOAT:B = 0x4t

.field static final INTEGER:B = 0x3t

.field static final INTERFACEMETHODREF:B = 0xbt

.field static final LONG:B = 0x5t

.field static final METHODREF:B = 0xat

.field static final NAMEANDTYPE:B = 0xct

.field static final STRING:B = 0x8t

.field static final UNUSED:B = 0x2t

.field static final UTF8:B = 0x1t


# instance fields
.field types:[B

.field values:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/io/DataInput;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v0

    .line 52
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->types:[B

    .line 53
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 56
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v3

    .line 57
    iget-object v4, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->types:[B

    aput-byte v3, v4, v2

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    .line 90
    :pswitch_1
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 84
    :pswitch_2
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_1

    .line 79
    :pswitch_3
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 75
    :pswitch_4
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 71
    :pswitch_5
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    goto :goto_2

    .line 60
    :pswitch_6
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    :goto_2
    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method
