.class public Lorg/apache/tools/ant/attribute/IfSetAttribute;
.super Lorg/apache/tools/ant/attribute/BaseIfAttribute;
.source "IfSetAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/tools/ant/attribute/IfSetAttribute$Unless;
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

    .line 37
    invoke-virtual {p0}, Lorg/apache/tools/ant/attribute/IfSetAttribute;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/Project;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/attribute/IfSetAttribute;->convertResult(Z)Z

    move-result p1

    return p1
.end method
