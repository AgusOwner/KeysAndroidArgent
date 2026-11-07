.class public Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;
.super Ljava/lang/Object;
.source "ClassFile.java"


# static fields
.field private static final CLASS_MAGIC:I = -0x35014542


# instance fields
.field private className:Ljava/lang/String;

.field private constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClassRefs()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 93
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 95
    iget-object v3, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-virtual {v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 98
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->getTag()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 99
    check-cast v3, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    .line 101
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->className:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 103
    invoke-virtual {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;->convertSlashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getFullClassName()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->className:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFileUtils;->convertSlashName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassFormatError;
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    const v1, -0x35014542    # -8346975.0f

    if-ne p1, v1, :cond_0

    .line 67
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 68
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 71
    new-instance p1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-direct {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;-><init>()V

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    .line 73
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->read(Ljava/io/DataInputStream;)V

    .line 74
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->resolve()V

    .line 76
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 77
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    .line 78
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    .line 79
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->constantPool:Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;

    .line 80
    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;->getEntry(I)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;

    move-result-object p1

    check-cast p1, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    .line 81
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/ClassFile;->className:Ljava/lang/String;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/ClassFormatError;

    const-string v0, "No Magic Code Found - probably not a Java class file."

    invoke-direct {p1, v0}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
