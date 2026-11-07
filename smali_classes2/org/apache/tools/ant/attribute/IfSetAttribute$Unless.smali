.class public Lorg/apache/tools/ant/attribute/IfSetAttribute$Unless;
.super Lorg/apache/tools/ant/attribute/IfSetAttribute;
.source "IfSetAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/attribute/IfSetAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unless"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/attribute/IfSetAttribute;-><init>()V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/attribute/IfSetAttribute$Unless;->setPositive(Z)V

    return-void
.end method
