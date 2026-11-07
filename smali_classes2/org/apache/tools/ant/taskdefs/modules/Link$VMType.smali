.class public Lorg/apache/tools/ant/taskdefs/modules/Link$VMType;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VMType"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1323
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 4

    const-string v0, "minimal"

    const-string v1, "all"

    const-string v2, "client"

    const-string v3, "server"

    .line 1327
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
