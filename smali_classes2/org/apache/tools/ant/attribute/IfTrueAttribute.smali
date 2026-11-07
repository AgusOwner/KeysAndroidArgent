.class public Lorg/apache/tools/ant/attribute/IfTrueAttribute;
.super Lorg/apache/tools/ant/attribute/BaseIfAttribute;
.source "IfTrueAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/attribute/IfTrueAttribute$Unless;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/tools/ant/attribute/BaseIfAttribute;-><init>()V

    return-void
.end method


# virtual methods
.method public isEnabled(Lorg/apache/tools/ant/UnknownElement;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-static {p2}, Lorg/apache/tools/ant/Project;->toBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/attribute/IfTrueAttribute;->convertResult(Z)Z

    move-result p1

    return p1
.end method
