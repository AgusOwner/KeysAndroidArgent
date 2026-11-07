.class public Lorg/apache/tools/ant/taskdefs/FixCRLF$AddAsisRemove;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FixCRLF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/FixCRLF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddAsisRemove"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 678
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "asis"

    const-string v1, "remove"

    const-string v2, "add"

    .line 682
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
