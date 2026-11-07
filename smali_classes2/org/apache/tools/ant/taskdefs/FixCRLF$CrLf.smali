.class public Lorg/apache/tools/ant/taskdefs/FixCRLF$CrLf;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "FixCRLF.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/FixCRLF;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CrLf"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 689
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 7

    const-string v0, "asis"

    const-string v1, "cr"

    const-string v2, "lf"

    const-string v3, "crlf"

    const-string v4, "mac"

    const-string v5, "unix"

    const-string v6, "dos"

    .line 696
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
