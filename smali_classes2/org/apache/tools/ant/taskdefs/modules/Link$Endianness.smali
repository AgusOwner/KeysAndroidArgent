.class public Lorg/apache/tools/ant/taskdefs/modules/Link$Endianness;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Endianness"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1309
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 2

    const-string v0, "little"

    const-string v1, "big"

    .line 1313
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
