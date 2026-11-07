.class public final Lorg/apache/tools/ant/filters/ExpandProperties;
.super Lorg/apache/tools/ant/filters/BaseFilterReader;
.source "ExpandProperties.java"

# interfaces
.implements Lorg/apache/tools/ant/filters/ChainableReader;


# static fields
.field private static final EOF:I = -0x1


# instance fields
.field private buffer:[C

.field private index:I

.field private propertySet:Lorg/apache/tools/ant/types/PropertySet;


# direct methods
.method public static synthetic $r8$lambda$K40WPnDgx1ISJ8GpCuRVeRVFHHk(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lorg/apache/tools/ant/filters/BaseFilterReader;-><init>(Ljava/io/Reader;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/apache/tools/ant/types/PropertySet;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->propertySet:Lorg/apache/tools/ant/types/PropertySet;

    if-nez v0, :cond_0

    .line 76
    iput-object p1, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->propertySet:Lorg/apache/tools/ant/types/PropertySet;

    return-void

    .line 74
    :cond_0
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    const-string v0, "expandproperties filter accepts only one propertyset"

    invoke-direct {p1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public chain(Ljava/io/Reader;)Ljava/io/Reader;
    .locals 1

    .line 129
    new-instance v0, Lorg/apache/tools/ant/filters/ExpandProperties;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/filters/ExpandProperties;-><init>(Ljava/io/Reader;)V

    .line 130
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ExpandProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/ExpandProperties;->setProject(Lorg/apache/tools/ant/Project;)V

    .line 131
    iget-object p1, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->propertySet:Lorg/apache/tools/ant/types/PropertySet;

    invoke-virtual {v0, p1}, Lorg/apache/tools/ant/filters/ExpandProperties;->add(Lorg/apache/tools/ant/types/PropertySet;)V

    return-object v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->index:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    .line 93
    iget-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->buffer:[C

    if-nez v0, :cond_2

    .line 94
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ExpandProperties;->readFully()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p0}, Lorg/apache/tools/ant/filters/ExpandProperties;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->propertySet:Lorg/apache/tools/ant/types/PropertySet;

    if-nez v3, :cond_0

    .line 98
    invoke-static {v2}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v3

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v3}, Lorg/apache/tools/ant/types/PropertySet;->getProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Lorg/apache/tools/ant/filters/ExpandProperties$$ExternalSyntheticLambda0;-><init>(Ljava/util/Properties;)V

    move-object v3, v4

    .line 102
    :goto_0
    new-instance v4, Lorg/apache/tools/ant/property/ParseProperties;

    .line 103
    invoke-static {v2}, Lorg/apache/tools/ant/PropertyHelper;->getPropertyHelper(Lorg/apache/tools/ant/Project;)Lorg/apache/tools/ant/PropertyHelper;

    move-result-object v5

    .line 104
    invoke-virtual {v5}, Lorg/apache/tools/ant/PropertyHelper;->getExpanders()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v2, v5, v3}, Lorg/apache/tools/ant/property/ParseProperties;-><init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V

    .line 106
    invoke-virtual {v4, v0}, Lorg/apache/tools/ant/property/ParseProperties;->parseProperties(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [C

    goto :goto_1

    .line 108
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->buffer:[C

    .line 110
    :cond_2
    iget v0, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->index:I

    iget-object v2, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->buffer:[C

    array-length v3, v2

    if-ge v0, v3, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 111
    iput v1, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->index:I

    aget-char v0, v2, v0

    return v0

    .line 113
    :cond_3
    iput v1, p0, Lorg/apache/tools/ant/filters/ExpandProperties;->index:I

    :cond_4
    return v1
.end method
