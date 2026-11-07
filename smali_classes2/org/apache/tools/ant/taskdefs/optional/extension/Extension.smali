.class public final Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# static fields
.field public static final COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

.field public static final IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

.field public static final INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final OPTIONAL_EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

.field public static final REQUIRE_IMPLEMENTATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

.field public static final SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

.field public static final SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;


# instance fields
.field private extensionName:Ljava/lang/String;

.field private implementationURL:Ljava/lang/String;

.field private implementationVendor:Ljava/lang/String;

.field private implementationVendorID:Ljava/lang/String;

.field private implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

.field private specificationVendor:Ljava/lang/String;

.field private specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;


# direct methods
.method public static synthetic $r8$lambda$eAZF9qJrFrv6DkEgQ89vfUJYKm4(Ljava/lang/Object;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$oyFMa6IVPDKe12QZaaDKLH35PnY(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-List"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    .line 59
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Optional-Extension-List"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->OPTIONAL_EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    .line 65
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Extension-Name"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    .line 70
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 76
    sget-object v0, Ljava/util/jar/Attributes$Name;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 82
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    .line 88
    sget-object v0, Ljava/util/jar/Attributes$Name;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    .line 94
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-URL"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    .line 100
    new-instance v0, Ljava/util/jar/Attributes$Name;

    const-string v1, "Implementation-Vendor-Id"

    invoke-direct {v0, v1}, Ljava/util/jar/Attributes$Name;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    .line 106
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "COMPATIBLE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 113
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_SPECIFICATION_UPGRADE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 120
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_VENDOR_SWITCH"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 127
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "REQUIRE_IMPLEMENTATION_UPGRADE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->REQUIRE_IMPLEMENTATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    .line 136
    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    const-string v1, "INCOMPATIBLE"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 312
    iput-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->extensionName:Ljava/lang/String;

    .line 313
    iput-object p3, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->specificationVendor:Ljava/lang/String;

    const-string p3, ")"

    const-string v0, "\'. (Reason: "

    const-string v1, "\' in \'"

    if-eqz p2, :cond_0

    .line 317
    :try_start_0
    new-instance v2, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {v2, p2}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 320
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Bad specification version format \'"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 323
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 327
    :cond_0
    :goto_0
    iput-object p7, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationURL:Ljava/lang/String;

    .line 328
    iput-object p5, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVendor:Ljava/lang/String;

    .line 329
    iput-object p6, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVendorID:Ljava/lang/String;

    if-eqz p4, :cond_1

    .line 333
    :try_start_1
    new-instance p2, Lorg/apache/tools/ant/util/DeweyDecimal;

    invoke-direct {p2, p4}, Lorg/apache/tools/ant/util/DeweyDecimal;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    .line 336
    new-instance p5, Ljava/lang/StringBuilder;

    const-string p6, "Bad implementation version format \'"

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 343
    :cond_1
    :goto_1
    iget-object p1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->extensionName:Ljava/lang/String;

    if-eqz p1, :cond_2

    return-void

    .line 344
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "extensionName property is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Ljava/lang/String;Ljava/util/jar/Attributes;)V
    .locals 3

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtensionName()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-virtual {p2, v0, v1}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 259
    :cond_0
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-virtual {p2, v1, v0}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    :cond_1
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendorID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    :cond_2
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    :cond_3
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 281
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 282
    invoke-virtual {v0}, Lorg/apache/tools/ant/util/DeweyDecimal;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {p2, v1, v0}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 285
    :cond_4
    invoke-virtual {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationURL()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Ljava/util/jar/Attributes;->putValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public static addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Ljava/util/jar/Attributes;)V
    .locals 1

    const-string v0, ""

    .line 234
    invoke-static {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->addExtension(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;Ljava/lang/String;Ljava/util/jar/Attributes;)V

    return-void
.end method

.method public static getAvailable(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-object p0

    .line 194
    :cond_0
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda1;-><init>()V

    .line 195
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/stream/Stream;

    .line 196
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    .line 194
    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda2;-><init>()V

    .line 197
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda4;-><init>()V

    .line 198
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-object p0
.end method

.method private static getExtension(Ljava/lang/String;Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 9

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 614
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 623
    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    invoke-virtual {p1, v0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 631
    invoke-virtual {p1, p0}, Ljava/util/jar/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 633
    new-instance p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getExtension(Ljava/util/jar/Attributes;Ljava/util/List;Ljava/util/jar/Attributes$Name;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/Attributes;",
            "Ljava/util/List<",
            "Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;",
            ">;",
            "Ljava/util/jar/Attributes$Name;",
            ")V"
        }
    .end annotation

    .line 560
    invoke-virtual {p0, p2}, Ljava/util/jar/Attributes;->getValue(Ljava/util/jar/Attributes$Name;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, " "

    .line 564
    invoke-static {p2, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 565
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtension(Ljava/lang/String;Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 567
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static getListed(Ljava/util/jar/Manifest;Ljava/util/jar/Attributes$Name;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 2

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getMainAttributes()Ljava/util/jar/Attributes;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 539
    invoke-static {v1, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtension(Ljava/util/jar/Attributes;Ljava/util/List;Ljava/util/jar/Attributes$Name;)V

    .line 542
    :cond_0
    invoke-virtual {p0}, Ljava/util/jar/Manifest;->getEntries()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    new-instance v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;Ljava/util/jar/Attributes$Name;)V

    .line 543
    invoke-interface {p0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    new-array p0, p0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    .line 545
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-object p0
.end method

.method public static getOptions(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 1

    .line 223
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->OPTIONAL_EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    invoke-static {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getListed(Ljava/util/jar/Manifest;Ljava/util/jar/Attributes$Name;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p0

    return-object p0
.end method

.method public static getRequired(Ljava/util/jar/Manifest;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 1

    .line 211
    sget-object v0, Ljava/util/jar/Attributes$Name;->EXTENSION_LIST:Ljava/util/jar/Attributes$Name;

    invoke-static {p0, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getListed(Ljava/util/jar/Manifest;Ljava/util/jar/Attributes$Name;)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p0

    return-object p0
.end method

.method private static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isCompatible(Lorg/apache/tools/ant/util/DeweyDecimal;Lorg/apache/tools/ant/util/DeweyDecimal;)Z
    .locals 0

    .line 521
    invoke-virtual {p1, p2}, Lorg/apache/tools/ant/util/DeweyDecimal;->isGreaterThanOrEqual(Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$getAvailable$0(Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 1

    const-string v0, ""

    .line 197
    invoke-static {v0, p0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtension(Ljava/lang/String;Ljava/util/jar/Attributes;)Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getAvailable$1(I)[Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;
    .locals 0

    .line 198
    new-array p0, p0, [Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;

    return-object p0
.end method

.method static synthetic lambda$getListed$2(Ljava/util/List;Ljava/util/jar/Attributes$Name;Ljava/util/jar/Attributes;)V
    .locals 0

    .line 543
    invoke-static {p2, p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtension(Ljava/util/jar/Attributes;Ljava/util/List;Ljava/util/jar/Attributes$Name;)V

    return-void
.end method

.method private static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 581
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->countTokens()I

    move-result p0

    new-array p1, p0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 585
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public getCompatibilityWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;
    .locals 2

    .line 421
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->extensionName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getExtensionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->INCOMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1

    .line 427
    :cond_0
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 429
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_1

    .line 430
    invoke-direct {p0, v1, v0}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->isCompatible(Lorg/apache/tools/ant/util/DeweyDecimal;Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 431
    :cond_1
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->REQUIRE_SPECIFICATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1

    .line 437
    :cond_2
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVendorID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 439
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVendorID:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 440
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 441
    :cond_3
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->REQUIRE_VENDOR_SWITCH:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1

    .line 447
    :cond_4
    invoke-virtual {p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getImplementationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 449
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v0, :cond_5

    .line 450
    invoke-direct {p0, v0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->isCompatible(Lorg/apache/tools/ant/util/DeweyDecimal;Lorg/apache/tools/ant/util/DeweyDecimal;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 451
    :cond_5
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->REQUIRE_IMPLEMENTATION_UPGRADE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1

    .line 456
    :cond_6
    sget-object p1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    return-object p1
.end method

.method public getExtensionName()Ljava/lang/String;
    .locals 1

    .line 354
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->extensionName:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationURL()Ljava/lang/String;
    .locals 1

    .line 381
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationURL:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVendorID()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVendorID:Ljava/lang/String;

    return-object v0
.end method

.method public getImplementationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;
    .locals 1

    .line 408
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    .line 363
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->specificationVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getSpecificationVersion()Lorg/apache/tools/ant/util/DeweyDecimal;
    .locals 1

    .line 372
    iget-object v0, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    return-object v0
.end method

.method public isCompatibleWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Z
    .locals 1

    .line 470
    sget-object v0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->COMPATIBLE:Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

    invoke-virtual {p0, p1}, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->getCompatibilityWith(Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;)Lorg/apache/tools/ant/taskdefs/optional/extension/Compatibility;

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

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->EXTENSION_NAME:Ljava/util/jar/Attributes$Name;

    iget-object v2, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->extensionName:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s: %s%n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->specificationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_0

    .line 486
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->SPECIFICATION_VERSION:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    :cond_0
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->specificationVendor:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 490
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->SPECIFICATION_VENDOR:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    :cond_1
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVersion:Lorg/apache/tools/ant/util/DeweyDecimal;

    if-eqz v1, :cond_2

    .line 494
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VERSION:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    :cond_2
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVendorID:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 498
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VENDOR_ID:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_3
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationVendor:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 502
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_VENDOR:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    :cond_4
    iget-object v1, p0, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->implementationURL:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 506
    sget-object v3, Lorg/apache/tools/ant/taskdefs/optional/extension/Extension;->IMPLEMENTATION_URL:Ljava/util/jar/Attributes$Name;

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
