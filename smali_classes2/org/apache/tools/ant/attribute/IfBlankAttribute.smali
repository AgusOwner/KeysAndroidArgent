.class public Lorg/apache/tools/ant/attribute/IfBlankAttribute;
.super Lorg/apache/tools/ant/attribute/BaseIfAttribute;
.source "IfBlankAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/attribute/IfBlankAttribute$Unless;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/tools/ant/attribute/BaseIfAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_1

    .line 37
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/attribute/IfBlankAttribute;->convertResult(Z)Z

    move-result p1

    return p1
.end method
