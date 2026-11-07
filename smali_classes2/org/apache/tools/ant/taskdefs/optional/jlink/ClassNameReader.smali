.class public Lorg/apache/tools/ant/taskdefs/optional/jlink/ClassNameReader;
.super Ljava/lang/Object;
.source "ClassNameReader.java"


# static fields
.field private static final CLASS_MAGIC_NUMBER:I = -0x35014542


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassName(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const v1, -0x35014542    # -8346975.0f

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    .line 124
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;

    invoke-direct {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;-><init>(Ljava/io/DataInput;)V

    .line 125
    iget-object p0, p0, Lorg/apache/tools/ant/taskdefs/optional/jlink/ConstantPool;->values:[Ljava/lang/Object;

    .line 127
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 128
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    .line 129
    aget-object v0, p0, v0

    check-cast v0, Ljava/lang/Integer;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object p0, p0, v0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
