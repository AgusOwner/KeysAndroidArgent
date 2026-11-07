.class public Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;
.super Ljava/lang/Object;
.source "XSLTProcess.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Feature"
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1603
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 1606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1607
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->name:Ljava/lang/String;

    .line 1608
    iput-boolean p2, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->value:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1629
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Z
    .locals 1

    .line 1636
    iget-boolean v0, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->value:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1615
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->name:Ljava/lang/String;

    return-void
.end method

.method public setValue(Z)V
    .locals 0

    .line 1622
    iput-boolean p1, p0, Lorg/apache/tools/ant/taskdefs/XSLTProcess$Factory$Feature;->value:Z

    return-void
.end method
