.class public abstract Lorg/apache/tools/ant/filters/BaseParamFilterReader;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "BaseParamFilterReader.java"

# interfaces
.implements Lorg/apache/tools/ant/types/Parameterizable;


# instance fields
.field private parameters:[Lorg/apache/tools/ant/types/Parameter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method protected final getParameters()[Lorg/apache/tools/ant/types/Parameter;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/apache/tools/ant/filters/BaseParamFilterReader;->parameters:[Lorg/apache/tools/ant/types/Parameter;

    return-object v0
.end method

.method public final varargs setParameters([Lorg/apache/tools/ant/types/Parameter;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/apache/tools/ant/filters/BaseParamFilterReader;->parameters:[Lorg/apache/tools/ant/types/Parameter;

    const/4 p1, 0x0

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/filters/BaseParamFilterReader;->setInitialized(Z)V

    return-void
.end method
