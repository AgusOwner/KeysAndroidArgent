.class public Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;
.super Ljava/lang/Object;
.source "Link.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/modules/Link;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReleaseInfoKey"
.end annotation


# instance fields
.field private key:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;


# direct methods
.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;)V
    .locals 0

    .line 1483
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/tools/ant/taskdefs/modules/Link;Ljava/lang/String;)V
    .locals 0

    .line 1492
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1493
    invoke-virtual {p0, p2}, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->setKey(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1502
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 1512
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->key:Ljava/lang/String;

    return-void
.end method

.method public validate()V
    .locals 3

    .line 1521
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->key:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 1522
    :cond_0
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/modules/Link$ReleaseInfoKey;->this$0:Lorg/apache/tools/ant/taskdefs/modules/Link;

    .line 1524
    invoke-virtual {v1}, Lorg/apache/tools/ant/taskdefs/modules/Link;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "Release info key must define a \'key\' attribute."

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method
