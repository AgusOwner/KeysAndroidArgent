.class public Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;
.super Lorg/apache/tools/ant/types/EnumeratedAttribute;
.source "EchoProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/optional/EchoProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormatAttribute"
.end annotation


# instance fields
.field private formats:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 243
    invoke-direct {p0}, Lorg/apache/tools/ant/types/EnumeratedAttribute;-><init>()V

    const-string v0, "xml"

    const-string v1, "text"

    .line 244
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;->formats:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .line 252
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/EchoProperties$FormatAttribute;->formats:[Ljava/lang/String;

    return-object v0
.end method
