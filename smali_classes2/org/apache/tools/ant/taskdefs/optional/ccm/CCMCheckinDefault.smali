.class public Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckinDefault;
.super Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;
.source "CCMCheckinDefault.java"


# static fields
.field public static final DEFAULT_TASK:Ljava/lang/String; = "default"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;-><init>()V

    const-string v0, "ci"

    .line 34
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckinDefault;->setCcmAction(Ljava/lang/String;)V

    const-string v0, "default"

    .line 35
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckinDefault;->setTask(Ljava/lang/String;)V

    return-void
.end method
