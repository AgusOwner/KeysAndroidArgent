.class public Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS$CurrentModUpdated;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "MSVSS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/vss/MSVSS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CurrentModUpdated"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 764
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 3

    const-string v0, "modified"

    const-string v1, "updated"

    const-string v2, "current"

    .line 770
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
