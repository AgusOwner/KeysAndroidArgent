.class public Lorg/apache/tools/ant/taskdefs/Local$Name;
.super Ljava/lang/Object;
.source "Local.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/taskdefs/Local;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Lorg/apache/tools/ant/property/LocalProperties;",
        ">;"
    }
.end annotation


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/apache/tools/ant/property/LocalProperties;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/Local$Name;->accept(Lorg/apache/tools/ant/property/LocalProperties;)V

    return-void
.end method

.method public accept(Lorg/apache/tools/ant/property/LocalProperties;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/Local$Name;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Lorg/apache/tools/ant/property/LocalProperties;->addLocal(Ljava/lang/String;)V

    return-void

    .line 53
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "nested name element is missing text"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addText(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/Local$Name;->text:Ljava/lang/String;

    return-void
.end method
