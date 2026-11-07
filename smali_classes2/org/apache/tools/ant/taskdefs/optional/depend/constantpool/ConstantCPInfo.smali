.class public abstract Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantCPInfo;
.super Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;
.source "ConstantCPInfo.java"


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(II)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantPoolEntry;-><init>(II)V

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantCPInfo;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/depend/constantpool/ConstantCPInfo;->value:Ljava/lang/Object;

    return-void
.end method
