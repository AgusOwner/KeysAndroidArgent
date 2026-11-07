.class public Lorg/apache/tools/ant/taskdefs/PathConvert$TargetOs;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "PathConvert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/PathConvert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TargetOs"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 5

    const-string v0, "os/2"

    const-string v1, "tandem"

    const-string v2, "windows"

    const-string v3, "unix"

    const-string v4, "netware"

    .line 201
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
