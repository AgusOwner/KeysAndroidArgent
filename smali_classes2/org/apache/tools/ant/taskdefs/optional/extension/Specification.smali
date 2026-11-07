.class public final Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
.super Ljava/lang/Object;
.source "Specification.java"


# static fields
.field public static final COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field private static final MISSING:Ljava/lang/String; = "Missing "

.field public static final REQUIRE_IMPLEMENTATION_CHANGE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private implementationTitle:Ljava/lang/String;

.field private implementationVendor:Ljava/lang/String;

.field private implementationVersion:Ljava/lang/String;

.field private sections:[Ljava/lang/String;

.field private specificationTitle:Ljava/lang/String;

.field private specificationVendor:Ljava/lang/String;

.field private specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;


# direct methods
.method public static synthetic $r8$lambda$FXI71IL-u7K3v79N2wK7KCwB1D4([Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 51
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 57
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 63
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 69
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    .line 75
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 81
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 88
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "COMPATIBLE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 95
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_SPECIFICATION_UPGRADE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 102
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_VENDOR_SWITCH"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 109
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_IMPLEMENTATION_CHANGE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_IMPLEMENTATION_CHANGE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 118
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "INCOMPATIBLE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 202
    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    .line 228
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVendor:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 232
    :try_start_0
    new-instance p3, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {p3, p2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 235
    new-instance p4, Ljava/lang/IllegalArgumentException;

    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Bad specification version format \'"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p5, "\' in \'"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\'. (Reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 242
    :cond_0
    :goto_0
    iput-object p4, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationTitle:Ljava/lang/String;

    .line 243
    iput-object p6, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVendor:Ljava/lang/String;

    .line 244
    iput-object p5, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVersion:Ljava/lang/String;

    .line 246
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    if-eqz p1, :cond_2

    if-nez p7, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    .line 249
    :cond_1
    invoke-virtual {p7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    :goto_1
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->sections:[Ljava/lang/String;

    return-void

    .line 247
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "specificationTitle"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getSpecification(Ljava/lang/String;Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 510
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 515
    :cond_0
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const-string v3, "Missing "

    if-eqz v4, :cond_5

    .line 520
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 525
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 530
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 535
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 540
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v8

    move-object v1, v0

    move-object v3, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 537
    :cond_1
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 532
    :cond_2
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 527
    :cond_3
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 522
    :cond_4
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 517
    :cond_5
    new-instance p0, Ljava/text/ParseException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static getSpecifications(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-array p0, v0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    return-object p0

    .line 174
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 177
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/jar/Attributes;

    invoke-static {v3, v2}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecification(Ljava/lang/String;Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    .line 178
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->removeDuplicates(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    new-array v0, v0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    .line 181
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    return-object p0
.end method

.method private static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isCompatible(Lorg/apache/tools/ant/util/DeweyDecimal;Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .locals 0

    .line 411
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result p1

    return p1
.end method

.method private static isEqual(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Z
    .locals 2

    .line 456
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/tools/ant/util/DeweyDecimal;->isEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVendor()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVendor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$mergeInSections$1(I)[Ljava/lang/String;
    .locals 0

    .line 485
    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method static synthetic lambda$removeDuplicates$0(Ljava/util/List;[Ljava/lang/String;)V
    .locals 0

    .line 434
    invoke-static {p0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method private static mergeInSections(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;Ljava/util/List;)Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;"
        }
    .end annotation

    .line 474
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 477
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSections()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda0;-><init>()V

    .line 478
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    .line 477
    invoke-static {v0, p1}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 480
    new-instance v8, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v1

    .line 481
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    .line 482
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationTitle()Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVersion()Ljava/lang/String;

    move-result-object v5

    .line 485
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVendor()Ljava/lang/String;

    move-result-object v6

    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p1, p0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, [Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v8
.end method

.method private static removeDuplicates(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 427
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 428
    invoke-interface {p0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    .line 430
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 431
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    .line 432
    invoke-static {v2, v4}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->isEqual(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 433
    invoke-virtual {v4}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSections()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda3;

    invoke-direct {v5, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification$$ExternalSyntheticLambda3;-><init>(Ljava/util/List;)V

    .line 434
    invoke-virtual {v4, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 435
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 438
    :cond_1
    invoke-static {v2, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->mergeInSections(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;Ljava/util/List;)Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public getCompatibilityWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;
    .locals 2

    .line 328
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1

    .line 333
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    .line 334
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 335
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->isCompatible(Lorg/apache/tools/ant/util/DeweyDecimal;Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 336
    :cond_1
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1

    .line 340
    :cond_2
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVendor:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 341
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVendor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 342
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1

    .line 346
    :cond_3
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVersion:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 347
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getImplementationVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 348
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->REQUIRE_IMPLEMENTATION_CHANGE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1

    .line 352
    :cond_4
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .locals 1

    .line 276
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    .line 303
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSections()[Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->sections:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;
    .locals 1

    .line 285
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    return-object v0
.end method

.method public isCompatibleWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Z
    .locals 1

    .line 364
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->getCompatibilityWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;)Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_TITLE:Ljava/util/jar/Attributes$Name;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationTitle:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s: %s%n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 379
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_0

    .line 380
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->specificationVendor:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 384
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 388
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_TITLE:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVersion:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 392
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->implementationVendor:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 396
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Specification;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
