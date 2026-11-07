.class public abstract Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;
.super Ljava/lang/Object;
.source "ConstantPoolEntry.java"


# static fields
.field public static final CONSTANT_CLASS:I = 0x7

.field public static final CONSTANT_DOUBLE:I = 0x6

.field public static final CONSTANT_FIELDREF:I = 0x9

.field public static final CONSTANT_FLOAT:I = 0x4

.field public static final CONSTANT_INTEGER:I = 0x3

.field public static final CONSTANT_INTERFACEMETHODREF:I = 0xb

.field public static final CONSTANT_INVOKEDYNAMIC:I = 0x12

.field public static final CONSTANT_LONG:I = 0x5

.field public static final CONSTANT_METHODHANDLE:I = 0xf

.field public static final CONSTANT_METHODREF:I = 0xa

.field public static final CONSTANT_METHODTYPE:I = 0x10

.field public static final CONSTANT_MODULEINFO:I = 0x13

.field public static final CONSTANT_NAMEANDTYPE:I = 0xc

.field public static final CONSTANT_PACKAGEINFO:I = 0x14

.field public static final CONSTANT_STRING:I = 0x8

.field public static final CONSTANT_UTF8:I = 0x1


# instance fields
.field private numEntries:I

.field private resolved:Z

.field private tag:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->tag:I

    .line 107
    iput p2, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->numEntries:I

    const/4 p1, 0x0

    .line 108
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolved:Z

    return-void
.end method

.method public static readEntry(Ljava/io/DataInputStream;)Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :pswitch_0
    new-instance p0, Ljava/lang/ClassFormatError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Constant Pool entry Type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/ClassFormatError;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :pswitch_1
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/PackageCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/PackageCPInfo;-><init>()V

    goto :goto_0

    .line 173
    :pswitch_2
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ModuleCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ModuleCPInfo;-><init>()V

    goto :goto_0

    .line 170
    :pswitch_3
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InvokeDynamicCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InvokeDynamicCPInfo;-><init>()V

    goto :goto_0

    .line 167
    :pswitch_4
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodTypeCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodTypeCPInfo;-><init>()V

    goto :goto_0

    .line 164
    :pswitch_5
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodHandleCPInfo;-><init>()V

    goto :goto_0

    .line 161
    :pswitch_6
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/NameAndTypeCPInfo;-><init>()V

    goto :goto_0

    .line 158
    :pswitch_7
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/InterfaceMethodRefCPInfo;-><init>()V

    goto :goto_0

    .line 155
    :pswitch_8
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/MethodRefCPInfo;-><init>()V

    goto :goto_0

    .line 152
    :pswitch_9
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FieldRefCPInfo;-><init>()V

    goto :goto_0

    .line 149
    :pswitch_a
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/StringCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/StringCPInfo;-><init>()V

    goto :goto_0

    .line 146
    :pswitch_b
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ClassCPInfo;-><init>()V

    goto :goto_0

    .line 143
    :pswitch_c
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/DoubleCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/DoubleCPInfo;-><init>()V

    goto :goto_0

    .line 140
    :pswitch_d
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/LongCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/LongCPInfo;-><init>()V

    goto :goto_0

    .line 137
    :pswitch_e
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FloatCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/FloatCPInfo;-><init>()V

    goto :goto_0

    .line 134
    :pswitch_f
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/IntegerCPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/IntegerCPInfo;-><init>()V

    goto :goto_0

    .line 131
    :pswitch_10
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/Utf8CPInfo;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/Utf8CPInfo;-><init>()V

    .line 182
    :goto_0
    invoke-virtual {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->read(Ljava/io/DataInputStream;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final getNumEntries()I
    .locals 1

    .line 236
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->numEntries:I

    return v0
.end method

.method public getTag()I
    .locals 1

    .line 226
    iget v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->tag:I

    return v0
.end method

.method public isResolved()Z
    .locals 1

    .line 196
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolved:Z

    return v0
.end method

.method public abstract read(Ljava/io/DataInputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public resolve(Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPool;)V
    .locals 0

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;->resolved:Z

    return-void
.end method
