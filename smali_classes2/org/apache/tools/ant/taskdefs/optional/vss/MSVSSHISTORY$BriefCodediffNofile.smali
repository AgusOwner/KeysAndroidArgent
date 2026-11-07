.class public Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSHISTORY$BriefCodediffNofile;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "MSVSSHISTORY.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSSHISTORY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BriefCodediffNofile"
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
    .locals 4

    const-string v0, "nofile"

    const-string v1, "default"

    const-string v2, "brief"

    const-string v3, "codediff"

    .line 201
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
