.class public Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckout;
.super Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;
.source "CCMCheckout.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheck;-><init>()V

    const-string v0, "co"

    .line 32
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/ccm/CCMCheckout;->setCcmAction(Ljava/lang/String;)V

    return-void
.end method
