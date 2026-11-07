.class public Lorg/apache/tools/ant/attribute/IfBlankAttribute$Unless;
.super Lorg/apache/tools/ant/attribute/IfBlankAttribute;
.source "IfBlankAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/attribute/IfBlankAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Unless"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/apache/tools/ant/attribute/IfBlankAttribute;-><init>()V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, v0}, Lorg/apache/tools/ant/attribute/IfBlankAttribute$Unless;->setPositive(Z)V

    return-void
.end method
