.class public Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;
.super Lorg/apache/tools/ant/ProjectComponent;
.source "TokenFilter.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/TokenFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/tools/ant/filters/TokenFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContainsString"
.end annotation


# instance fields
.field private contains:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 404
    invoke-direct {p0}, Lorg/apache/tools/ant/ProjectComponent;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 424
    iget-object v0, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;->contains:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 427
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 425
    :cond_1
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "Missing contains in containsstring"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContains(Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lorg/apache/tools/ant/filters/TokenFilter$ContainsString;->contains:Ljava/lang/String;

    return-void
.end method
