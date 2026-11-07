.class public Lorg/apache/tools/ant/property/ParseProperties;
.super Ljava/lang/Object;
.source "ParseProperties.java"

# interfaces
.implements Lorg/apache/tools/ant/property/ParseNextProperty;


# instance fields
.field private final expanders:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/property/PropertyExpander;",
            ">;"
        }
    .end annotation
.end field

.field private final getProperty:Lorg/apache/tools/ant/property/GetProperty;

.field private final project:Lorg/apache/tools/ant/Project;


# direct methods
.method public static synthetic $r8$lambda$RUgTMKBFSM5JmQYe-scT_4CThWo(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/apache/tools/ant/Project;Ljava/util/Collection;Lorg/apache/tools/ant/property/GetProperty;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/Project;",
            "Ljava/util/Collection<",
            "Lorg/apache/tools/ant/property/PropertyExpander;",
            ">;",
            "Lorg/apache/tools/ant/property/GetProperty;",
            ")V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/apache/tools/ant/property/ParseProperties;->project:Lorg/apache/tools/ant/Project;

    .line 45
    iput-object p2, p0, Lorg/apache/tools/ant/property/ParseProperties;->expanders:Ljava/util/Collection;

    .line 46
    iput-object p3, p0, Lorg/apache/tools/ant/property/ParseProperties;->getProperty:Lorg/apache/tools/ant/property/GetProperty;

    return-void
.end method

.method private getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/apache/tools/ant/property/ParseProperties;->getProperty:Lorg/apache/tools/ant/property/GetProperty;

    invoke-interface {v0, p1}, Lorg/apache/tools/ant/property/GetProperty;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;
    .locals 2

    .line 189
    iget-object v0, p0, Lorg/apache/tools/ant/property/ParseProperties;->expanders:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda0;-><init>(Lorg/apache/tools/ant/property/ParseProperties;Ljava/lang/String;Ljava/text/ParsePosition;)V

    .line 190
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lorg/apache/tools/ant/property/ParseProperties$$ExternalSyntheticLambda1;-><init>()V

    .line 191
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public containsProperties(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 138
    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v0}, Ljava/text/ParsePosition;-><init>(I)V

    :goto_0
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-ge v3, v1, :cond_2

    .line 139
    invoke-direct {p0, p1, v2}, Lorg/apache/tools/ant/property/ParseProperties;->parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    return v4

    .line 142
    :cond_1
    invoke-virtual {v2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    :cond_2
    return v0
.end method

.method public getProject()Lorg/apache/tools/ant/Project;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/apache/tools/ant/property/ParseProperties;->project:Lorg/apache/tools/ant/Project;

    return-object v0
.end method

.method synthetic lambda$parsePropertyName$0$org-apache-tools-ant-property-ParseProperties(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/PropertyExpander;)Ljava/lang/String;
    .locals 0

    .line 190
    invoke-interface {p3, p1, p2, p0}, Lorg/apache/tools/ant/property/PropertyExpander;->parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;Lorg/apache/tools/ant/property/ParseNextProperty;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parseNextProperty(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 5

    .line 164
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v0

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return-object v2

    .line 172
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/apache/tools/ant/property/ParseProperties;->parsePropertyName(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 174
    invoke-direct {p0, v1}, Lorg/apache/tools/ant/property/ParseProperties;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 178
    :cond_1
    iget-object v2, p0, Lorg/apache/tools/ant/property/ParseProperties;->project:Lorg/apache/tools/ant/Project;

    if-eqz v2, :cond_2

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Property \""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" has not been set"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v2, v1, v3}, Lorg/apache/tools/ant/Project;->log(Ljava/lang/String;I)V

    .line 183
    :cond_2
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v2
.end method

.method public parseProperties(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    if-eqz p1, :cond_5

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 99
    new-instance v1, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 100
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/property/ParseProperties;->parseNextProperty(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    if-lt v3, v0, :cond_1

    return-object v2

    .line 104
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v0, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    if-nez v2, :cond_2

    .line 106
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    :goto_0
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    if-ge v2, v0, :cond_4

    .line 112
    invoke-virtual {p0, p1, v1}, Lorg/apache/tools/ant/property/ParseProperties;->parseNextProperty(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 114
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 120
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_5
    :goto_1
    return-object p1
.end method
